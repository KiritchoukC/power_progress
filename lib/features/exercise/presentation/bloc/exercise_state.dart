part of 'exercise_bloc.dart';

abstract class ExerciseState extends Equatable {
  const ExerciseState();
}

class ExerciseInitial extends ExerciseState {
  @override
  List<Object> get props => [];
}
