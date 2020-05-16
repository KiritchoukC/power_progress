part of 'workout_bloc.dart';

abstract class WorkoutState extends Equatable {
  const WorkoutState();

  @override
  List<Object> get props => [];
}

class WorkoutInitialState extends WorkoutState {}

class WorkoutGeneratingState extends WorkoutState {}

class WorkoutGeneratedState extends WorkoutState {}

// Error
class WorkoutErrorState extends WorkoutState {
  final String message;

  const WorkoutErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
