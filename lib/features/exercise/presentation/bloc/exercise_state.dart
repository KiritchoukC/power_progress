part of 'exercise_bloc.dart';

abstract class ExerciseState extends Equatable {
  const ExerciseState();

  @override
  List<Object> get props => [];
}

class ExerciseInitialState extends ExerciseState {}

// Adding
class ExerciseAddingState extends ExerciseState {}

class ExerciseAddedState extends ExerciseState {}

// Fetching
class ExerciseFetchingState extends ExerciseState {}

class ExerciseFetchedState extends ExerciseState {
  final List<Exercise> exercises;

  const ExerciseFetchedState({@required this.exercises});

  @override
  List<Object> get props => [exercises];
}

// Onboarding
class OnboardingMarkingDoneState extends ExerciseState {}

class OnboardingMarkedDoneState extends ExerciseState {}

class OnboardingIsDoneLoadingState extends ExerciseState {}

class OnboardingIsDoneState extends ExerciseState {}

class OnboardingIsNotDoneState extends ExerciseState {}

// Removing

class ExerciseRemovingState extends ExerciseState {}

// Selection
class ExerciseSelectionModeState extends ExerciseState {
  final bool isInSelectionMode;
  final List<int> selectedIds;

  const ExerciseSelectionModeState({@required this.isInSelectionMode, @required this.selectedIds});

  @override
  List<Object> get props => [isInSelectionMode, selectedIds];
}

// Error
class ExerciseErrorState extends ExerciseState {
  final String message;

  const ExerciseErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
