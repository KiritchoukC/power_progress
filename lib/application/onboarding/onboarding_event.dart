part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.markDone() = MarkDone;
  const factory OnboardingEvent.isDone() = IsDone;
}
