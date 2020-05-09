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
