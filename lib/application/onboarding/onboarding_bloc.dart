import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:power_progress/domain/onboarding/entities/onboarding_failure.dart';

import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/onboarding/usecases/done_onboarding.dart';
import 'package:power_progress/domain/onboarding/usecases/is_done_onboarding.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final DoneOnboarding doneOnboarding;
  final IsDoneOnboarding isDoneOnboarding;

  OnboardingBloc({
    @required this.doneOnboarding,
    @required this.isDoneOnboarding,
  });

  @override
  OnboardingState get initialState => OnboardingInitialState();

  @override
  Stream<OnboardingState> mapEventToState(
    OnboardingEvent event,
  ) async* {
    if (event is OnboardingDoneEvent) {
      yield* _handleOnboardingDoneEvent(event);
    }

    if (event is OnboardingIsDoneEvent) {
      yield* _handleOnboardingIsDoneEvent(event);
    }
  }

  Stream<OnboardingState> _handleOnboardingDoneEvent(OnboardingDoneEvent event) async* {
    yield OnboardingMarkingDoneState();

    final output = await doneOnboarding(NoParams());

    Stream<OnboardingState> onFailure(OnboardingFailure failure) async* {
      yield OnboardingErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<OnboardingState> onSuccess(Unit unit) async* {
      yield OnboardingMarkedDoneState();
    }

    yield* output.fold(onFailure, onSuccess);
  }

  Stream<OnboardingState> _handleOnboardingIsDoneEvent(OnboardingIsDoneEvent event) async* {
    yield OnboardingIsDoneLoadingState();

    final output = await isDoneOnboarding(NoParams());

    Stream<OnboardingState> onFailure(OnboardingFailure failure) async* {
      yield OnboardingErrorState(message: mapFailureToErrorMessage(failure));
    }

    Stream<OnboardingState> onSuccess(bool isDone) async* {
      if (isDone) {
        yield OnboardingIsDoneState();
      } else {
        yield OnboardingIsNotDoneState();
      }
    }

    yield* output.fold(onFailure, onSuccess);
  }

  String mapFailureToErrorMessage(OnboardingFailure failure) {
    if (failure is StorageError) return storageErrorMessage;

    return unknownErrorMessage;
  }
}
