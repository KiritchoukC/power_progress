part of 'workout_bloc.dart';

abstract class WorkoutEvent extends Equatable {
  const WorkoutEvent();

  @override
  List<Object> get props => [];
}

class WorkoutGenerateEvent extends WorkoutEvent {
  final int exerciseId;
  final int month;
  final double oneRm;

  const WorkoutGenerateEvent({
    @required this.exerciseId,
    @required this.month,
    @required this.oneRm,
  });

  @override
  List<Object> get props => [exerciseId, month, oneRm];
}
