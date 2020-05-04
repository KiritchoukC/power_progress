part of 'exercise_bloc.dart';

abstract class ExerciseEvent extends Equatable {
  const ExerciseEvent();

  @override
  List<Object> get props => [];
}

class AddExerciseEvent extends ExerciseEvent {
  final Exercise exercise;

  const AddExerciseEvent({@required this.exercise});

  @override
  List<Object> get props => [exercise];
}
