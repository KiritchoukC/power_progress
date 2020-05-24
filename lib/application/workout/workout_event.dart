part of 'workout_bloc.dart';

abstract class WorkoutEvent extends Equatable {
  const WorkoutEvent();

  @override
  List<Object> get props => [];

  @override
  String toString() {
    if (props.isEmpty) return super.toString();
    final propsStr = props.reduce((value, element) => '${value.toString()}, $element');
    return '${super.toString()}: [$propsStr] ';
  }
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

class WorkoutMarkDoneEvent extends WorkoutEvent {
  final int exerciseId;
  final int month;
  final WeekEnum week;
  final int repsDone;

  const WorkoutMarkDoneEvent({
    @required this.exerciseId,
    @required this.month,
    @required this.week,
    this.repsDone,
  });

  @override
  List<Object> get props => [exerciseId, month, week, repsDone];
}

class WorkoutMarkUndoneEvent extends WorkoutEvent {
  final int id;
  final int exerciseId;
  final WeekEnum week;
  final int month;

  const WorkoutMarkUndoneEvent({
    @required this.id,
    @required this.exerciseId,
    @required this.week,
    @required this.month,
  });

  @override
  List<Object> get props => [
        id,
        exerciseId,
        week,
        month,
      ];
}
