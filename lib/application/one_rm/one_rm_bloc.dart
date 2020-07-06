import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:power_progress/core/messages/errors.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/one_rm/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/i_one_rm_repository.dart';

part 'one_rm_event.dart';
part 'one_rm_state.dart';
part 'one_rm_bloc.freezed.dart';

class OneRmBloc extends Bloc<OneRmEvent, OneRmState> {
  final IOneRmRepository oneRmRepository;

  OneRmBloc({
    @required this.oneRmRepository,
  }) : super(const OneRmState.initial(exerciseId: 0));

  @override
  Stream<OneRmState> mapEventToState(
    OneRmEvent event,
  ) async* {
    yield* event.map(
      fetch: _handleFetchEvent,
      upsert: _handleUpsertEvent,
      generateAndSave: _handleGenerateAndSaveEvent,
      remove: _handleRemoveEvent,
    );
  }

  Stream<OneRmState> _handleUpsertEvent(Upsert event) async* {}

  Stream<OneRmState> _handleFetchEvent(Fetch event) async* {
    yield const OneRmState.fetchInProgress();

    final output = await oneRmRepository.getByExerciseIdAndMonth(event.exerciseId, event.month);

    yield* output.fold(
      (failure) async* {
        yield _mapFailureToState(failure);
      },
      (oneRmOption) async* {
        yield* oneRmOption.fold(
          () async* {
            yield const OneRmState.notFoundError();
          },
          (oneRm) async* {
            yield OneRmState.fetched(exerciseId: event.exerciseId, oneRm: oneRm);
          },
        );
      },
    );
  }

  Stream<OneRmState> _handleGenerateAndSaveEvent(GenerateAndSave event) async* {
    yield const OneRmState.generateAndSaveInProgress();

    final generatedOneRm = OneRm.generate(
      event.month,
      event.incrementation,
      event.oneRm,
      event.repsDone,
    );

    // add or update the one rm for the next month
    final output = await oneRmRepository.addOrUpdate(
      event.exerciseId,
      event.month.next,
      generatedOneRm,
    );

    yield* output.fold(
      (failure) async* {
        yield _mapFailureToState(failure);
      },
      (_) async* {
        yield OneRmState.generatedAndSaved(exerciseId: event.exerciseId, oneRm: generatedOneRm);
      },
    );
  }

  Stream<OneRmState> _handleRemoveEvent(Remove event) async* {
    yield const OneRmState.removeInProgress();

    final output = await oneRmRepository.removeByExerciseId(event.exerciseId);

    yield* output.fold(
      (failure) async* {
        yield _mapFailureToState(failure);
      },
      (r) async* {
        yield const OneRmState.removed();
      },
    );
  }

  OneRmState _mapFailureToState(OneRmFailure failure) {
    return failure.when(
      itemDoesNotExist: () => const OneRmState.notFoundError(),
      itemAlreadyExists: () => const OneRmState.alreadyExistError(),
      noExistingDataForThisExercise: () => const OneRmState.noExistingDataForThisExerciseError(),
      common: (commonFailure) => commonFailure.when(
        storageError: () => const OneRmState.storageError(),
        unexpectedError: () => const OneRmState.unexpectedError(),
      ),
    );
  }
}
