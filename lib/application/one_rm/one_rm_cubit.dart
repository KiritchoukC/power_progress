import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/one_rm/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/i_one_rm_repository.dart';

part 'one_rm_state.dart';
part 'one_rm_cubit.freezed.dart';

class OneRmCubit extends Cubit<OneRmState> {
  final IOneRmRepository oneRmRepository;

  OneRmCubit({
    @required this.oneRmRepository,
  }) : super(const OneRmState.initial(exerciseId: 0));

  Future fetch({@required int exerciseId, @required Month month}) async {
    emit(const OneRmState.fetchInProgress());

    final output = await oneRmRepository.getByExerciseIdAndMonth(exerciseId, month);

    output.fold(
      _handleFailure,
      (oneRmOption) => oneRmOption.fold(
        () => emit(const OneRmState.notFoundError()),
        (oneRm) => emit(OneRmState.fetched(exerciseId: exerciseId, oneRm: oneRm)),
      ),
    );
  }

  Future generateAndSave({
    @required int exerciseId,
    @required Month month,
    @required Incrementation incrementation,
    @required OneRm oneRm,
    @required Option<int> repsDone,
  }) async {
    emit(const OneRmState.generateAndSaveInProgress());

    final generatedOneRm = OneRm.generate(
      month,
      incrementation,
      oneRm,
      repsDone,
    );

    // add or update the one rm for the next month
    final output = await oneRmRepository.addOrUpdate(
      exerciseId,
      month.next,
      generatedOneRm,
    );

    output.fold(
      _handleFailure,
      (_) => emit(OneRmState.generatedAndSaved(exerciseId: exerciseId, oneRm: generatedOneRm)),
    );
  }

  Future remove({@required int exerciseId}) async {
    emit(const OneRmState.removeInProgress());

    final output = await oneRmRepository.removeByExerciseId(exerciseId);

    output.fold(
      _handleFailure,
      (_) => emit(const OneRmState.removed()),
    );
  }

  Future init({
    @required int exerciseId,
    @required Incrementation incrementation,
    @required OneRm oneRm,
  }) async {
    emit(const OneRmState.generateAndSaveInProgress());

    final generatedOneRm = OneRm.generate(
      Month(1),
      incrementation,
      oneRm,
      none(),
    );

    final output = await oneRmRepository.addOrUpdate(
      exerciseId,
      Month(1),
      generatedOneRm,
    );

    output.fold(
      _handleFailure,
      (_) => emit(OneRmState.generatedAndSaved(exerciseId: exerciseId, oneRm: generatedOneRm)),
    );
  }

  void _handleFailure(OneRmFailure failure) {
    failure.when(
      itemDoesNotExist: () => emit(const OneRmState.notFoundError()),
      itemAlreadyExists: () => emit(const OneRmState.alreadyExistError()),
      noExistingDataForThisExercise: () =>
          emit(const OneRmState.noExistingDataForThisExerciseError()),
      common: (commonFailure) => commonFailure.when(
        storageError: () => emit(const OneRmState.storageError()),
        unexpectedError: () => emit(const OneRmState.unexpectedError()),
      ),
    );
  }
}
