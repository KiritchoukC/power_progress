import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_fetch.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_generate_and_save.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_upsert.dart';

part 'one_rm_event.dart';
part 'one_rm_state.dart';
part 'one_rm_bloc.freezed.dart';

class OneRmBloc extends Bloc<OneRmEvent, OneRmState> {
  final OneRmFetch fetch;
  final OneRmUpsert upsert;
  final OneRmGenerateAndSave oneRmGenerateAndSave;

  OneRmBloc({
    @required this.fetch,
    @required this.upsert,
    @required this.oneRmGenerateAndSave,
  });

  @override
  OneRmState get initialState => const OneRmState.initial();

  @override
  Stream<OneRmState> mapEventToState(
    OneRmEvent event,
  ) async* {
    yield* event.map(
      fetch: _handleFetchEvent,
      upsert: _handleUpsertEvent,
      generateAndSave: _handleGenerateAndSaveEvent,
    );
  }

  Stream<OneRmState> _handleUpsertEvent(Upsert event) async* {}

  Stream<OneRmState> _handleFetchEvent(Fetch event) async* {
    yield const OneRmState.fetchInProgress();

    final output = await fetch(OneRmFetchParams(event.exerciseId, event.month));

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
            yield OneRmState.fetched(oneRm: oneRm);
          },
        );
      },
    );
  }

  Stream<OneRmState> _handleGenerateAndSaveEvent(GenerateAndSave event) async* {
    yield const OneRmState.generateAndSaveInProgress();

    final output = await oneRmGenerateAndSave(
      OneRmGenerateAndSaveParams(
        exerciseId: event.exerciseId,
        oneRm: event.oneRm,
        month: event.month,
        repsDone: event.repsDone,
      ),
    );

    yield* output.fold(
      (failure) async* {
        yield _mapFailureToState(failure);
      },
      (newOneRm) async* {
        yield OneRmState.generatedAndSaved(oneRm: newOneRm);
      },
    );
  }

  OneRmState _mapFailureToState(OneRmFailure failure) {
    return failure.when(
      storageError: () => const OneRmState.storageError(),
      unexpectedError: () => const OneRmState.unexpectedError(),
      itemDoesNotExist: () => const OneRmState.notFoundError(),
      itemAlreadyExists: () => const OneRmState.alreadyExistError(),
    );
  }
}
