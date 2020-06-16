import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_fetch.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_upsert.dart';

part 'one_rm_event.dart';
part 'one_rm_state.dart';
part 'one_rm_bloc.freezed.dart';

class OneRmBloc extends Bloc<OneRmEvent, OneRmState> {
  final OneRmFetch fetch;
  final OneRmUpsert upsert;

  OneRmBloc({
    @required this.fetch,
    @required this.upsert,
  });

  @override
  OneRmState get initialState => const OneRmState.initial();

  @override
  Stream<OneRmState> mapEventToState(
    OneRmEvent event,
  ) async* {
    yield* event.when(
      fetch: _handleFetchEvent,
      upsert: _handleUpsertEvent,
    );
  }

  Stream<OneRmState> _handleUpsertEvent(exerciseId, month, oneRm) async* {}

  Stream<OneRmState> _handleFetchEvent(int exerciseId, Month month) async* {
    yield const OneRmState.fetchInProgress();

    final output = await fetch(OneRmFetchParams(exerciseId, month));

    yield* output.fold(
      (failure) async* {
        yield* failure.when(
          storageError: () async* {
            yield const OneRmState.storageError();
          },
          itemDoesNotExist: () async* {
            yield const OneRmState.notFoundError();
          },
          itemAlreadyExists: () async* {
            yield const OneRmState.alreadyExistError();
          },
        );
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
}
