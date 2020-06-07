part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.done() = Done;
  const factory OnboardingEvent.isDone() = IsDone;
}
