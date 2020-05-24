part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];

  @override
  String toString() {
    if (props.isEmpty) return super.toString();
    final propsStr = props.reduce((value, element) => '${value.toString()}, $element');
    return '${super.toString()}: [$propsStr] ';
  }
}

class OnboardingDoneEvent extends OnboardingEvent {}

class OnboardingIsDoneEvent extends OnboardingEvent {}
