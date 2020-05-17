part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();
  @override
  List<Object> get props => [];
}

class OnboardingInitialState extends OnboardingState {}

// Onboarding
class OnboardingMarkingDoneState extends OnboardingState {}

class OnboardingMarkedDoneState extends OnboardingState {}

class OnboardingIsDoneLoadingState extends OnboardingState {}

class OnboardingIsDoneState extends OnboardingState {}

class OnboardingIsNotDoneState extends OnboardingState {}

// Error
class OnboardingErrorState extends OnboardingState {
  final String message;

  const OnboardingErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
