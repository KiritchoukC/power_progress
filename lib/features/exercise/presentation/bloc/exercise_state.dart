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

class ExerciseAddFailedState extends ExerciseState {
  final String message;

  const ExerciseAddFailedState({@required this.message});

  @override
  List<Object> get props => [message];
}

// Fetching
class ExerciseFetchingState extends ExerciseState {}

class ExerciseFetchedState extends ExerciseState {
  final List<Exercise> exercises;

  const ExerciseFetchedState({@required this.exercises});

  @override
  List<Object> get props => [exercises];
}

class ExerciseFetchFailedState extends ExerciseState {
  final String message;

  const ExerciseFetchFailedState({@required this.message});

  @override
  List<Object> get props => [message];
}
