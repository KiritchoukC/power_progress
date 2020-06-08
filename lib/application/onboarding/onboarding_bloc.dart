import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_progress/domain/onboarding/entities/onboarding_failure.dart';

import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/onboarding/usecases/done_onboarding.dart';
import 'package:power_progress/domain/onboarding/usecases/is_done_onboarding.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final DoneOnboarding doneOnboarding;
  final IsDoneOnboarding isDoneOnboarding;

  OnboardingBloc({
    @required this.doneOnboarding,
    @required this.isDoneOnboarding,
  });

  @override
  OnboardingState get initialState => const OnboardingState.initial();

  @override
  Stream<OnboardingState> mapEventToState(
    OnboardingEvent event,
  ) async* {
    yield* event.map(
      markDone: _handleMarkDoneEvent,
      isDone: _handleIsDoneEvent,
    );
  }

  Stream<OnboardingState> _handleMarkDoneEvent(MarkDone event) async* {
    yield const OnboardingState.markDoneInProgress();

    final output = await doneOnboarding(NoParams());

    Stream<OnboardingState> onFailure(OnboardingFailure failure) async* {
      yield OnboardingState.error(message: mapFailureToErrorMessage(failure));
    }

    Stream<OnboardingState> onSuccess(Unit unit) async* {
      yield const OnboardingState.markedDone();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<OnboardingState> _handleIsDoneEvent(IsDone event) async* {
    yield const OnboardingState.isDoneInProgress();

    final output = await isDoneOnboarding(NoParams());

    Stream<OnboardingState> onFailure(OnboardingFailure failure) async* {
      yield OnboardingState.error(message: mapFailureToErrorMessage(failure));
    }

    // ignore: avoid_positional_boolean_parameters
    Stream<OnboardingState> onSuccess(bool isDone) async* {
      if (isDone) {
        yield const OnboardingState.done();
      } else {
        yield const OnboardingState.notDone();
      }
    }

    yield* output.fold(onFailure, onSuccess);
  }

  String mapFailureToErrorMessage(OnboardingFailure failure) {
    if (failure is StorageError) return storageErrorMessage;

    return unknownErrorMessage;
  }
}
