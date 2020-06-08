part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = Initial;
  const factory OnboardingState.markDoneInProgress() = MarkDoneInProgress;
  const factory OnboardingState.markedDone() = MarkedDone;
  const factory OnboardingState.isDoneInProgress() = IsDoneInProgress;
  const factory OnboardingState.done() = Done;
  const factory OnboardingState.notDone() = NotDone;
  const factory OnboardingState.error({@required String message}) = Error;
}
