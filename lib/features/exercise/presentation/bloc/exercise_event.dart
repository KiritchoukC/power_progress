part of 'exercise_bloc.dart';

abstract class ExerciseEvent extends Equatable {
  const ExerciseEvent();

  @override
  List<Object> get props => [];
}

class ExerciseAddEvent extends ExerciseEvent {
  final Exercise exercise;

  const ExerciseAddEvent({@required this.exercise});

  @override
  List<Object> get props => [exercise];
}

class ExerciseFetchEvent extends ExerciseEvent {}

class OnboardingDoneEvent extends ExerciseEvent {}

class OnboardingIsDoneEvent extends ExerciseEvent {}

class ExerciseSelectionModeEvent extends ExerciseEvent {
  final bool isInSelectionMode;
  final List<int> selectedIds;

  const ExerciseSelectionModeEvent({@required this.isInSelectionMode, @required this.selectedIds});

  @override
  List<Object> get props => [isInSelectionMode, selectedIds];
}

class ExerciseRemoveEvent extends ExerciseEvent {
  final List<int> ids;

  const ExerciseRemoveEvent({@required this.ids});

  @override
  List<Object> get props => [ids];
}
