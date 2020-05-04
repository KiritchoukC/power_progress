part of 'exercise_bloc.dart';

abstract class ExerciseState extends Equatable {
  const ExerciseState();

  @override
  List<Object> get props => [];
}

class ExerciseInitialState extends ExerciseState {}

class AddExerciseLoadingState extends ExerciseState {}

class AddExerciseLoadedState extends ExerciseState {
  final Exercise exercise;

  const AddExerciseLoadedState({@required this.exercise});

  @override
  List<Object> get props => [exercise];
}
