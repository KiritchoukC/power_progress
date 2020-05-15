part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class OnboardingDoneEvent extends OnboardingEvent {}

class OnboardingIsDoneEvent extends OnboardingEvent {}
