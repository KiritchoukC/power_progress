part of 'exercise_bloc.dart';

abstract class ExerciseState extends Equatable {
  const ExerciseState();

  @override
  List<Object> get props => [];
}

class ExerciseInitialState extends ExerciseState {}

class ExerciseLoadingState extends ExerciseState {}

class ExerciseAddLoadedState extends ExerciseState {}

class ExerciseGetLoadedState extends ExerciseState {
  final List<Exercise> exercises;

  const ExerciseGetLoadedState({@required this.exercises});

  @override
  List<Object> get props => [exercises];
}

class ExerciseGetFailedState extends ExerciseState {
  final String message;

  const ExerciseGetFailedState({@required this.message});

  @override
  List<Object> get props => [message];
}
