import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/domain/onboarding/onboarding_failure.dart';
import 'package:power_progress/domain/onboarding/i_onboarding_repository.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final IOnboardingRepository onboardingRepository;

  OnboardingCubit({
    @required this.onboardingRepository,
  }) : super(const OnboardingState.initial());

  Future markDone() async {
    emit(const OnboardingState.markDoneInProgress());

    final output = await onboardingRepository.done();

    output.fold(
      _handleFailure,
      (_) => emit(const OnboardingState.markedDone()),
    );
  }

  Future isDone() async {
    emit(const OnboardingState.isDoneInProgress());

    final output = await onboardingRepository.isDone;

    output.fold(
      _handleFailure,
      (isDone) => emit(isDone ? const OnboardingState.done() : const OnboardingState.notDone()),
    );
  }

  void _handleFailure(OnboardingFailure failure) =>
      emit(OnboardingState.error(message: failure.toErrorMessage()));
}
