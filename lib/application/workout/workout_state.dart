part of 'workout_bloc.dart';

abstract class WorkoutState extends Equatable {
  const WorkoutState();

  @override
  List<Object> get props => [];
}

class WorkoutInitialState extends WorkoutState {}

class WorkoutGeneratingState extends WorkoutState {}

class WorkoutGeneratedState extends WorkoutState {
  final Workout workout;

  const WorkoutGeneratedState({@required this.workout});

  @override
  List<Object> get props => [workout];
}

// Error
class WorkoutErrorState extends WorkoutState {
  final String message;

  const WorkoutErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
