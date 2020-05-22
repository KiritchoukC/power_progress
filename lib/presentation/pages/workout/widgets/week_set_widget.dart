import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/workout/workout_bloc.dart';
import '../../../../core/util/spacing.dart';
import '../../../../domain/core/entities/weeks.dart';
import '../../../../domain/workout/entities/accumulation_workout.dart';
import '../../../../domain/workout/entities/deload_workout.dart';
import '../../../../domain/workout/entities/exercise_set.dart';
import '../../../../domain/workout/entities/intensification_workout.dart';
import '../../../../domain/workout/entities/realization_workout.dart';
import '../../../../domain/workout/entities/workout.dart';
import '../../../../theme/pp_light_theme.dart';
import 'exercise_set_widget.dart';
import '../../../../domain/workout/entities/workout_failure.dart';
import 'realization_dialog.dart';

class WeekSetWidget extends StatelessWidget {
  final Workout workout;
  final List<ExerciseSet> exerciseSets;
  final int exerciseId;

  const WeekSetWidget({
    Key key,
    @required this.workout,
    @required this.exerciseSets,
    @required this.exerciseId,
  }) : super(key: key);

  WeekEnum get week {
    if (workout is AccumulationWorkout) return WeekEnum.accumulation;
    if (workout is IntensificationWorkout) return WeekEnum.intensification;
    if (workout is RealizationWorkout) return WeekEnum.realization;
    if (workout is DeloadWorkout) return WeekEnum.deload;

    throw const UnexpectedError();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const DummyIcon(),
              WeekTitle(week: week),
              if (workout.isDone)
                UncheckButton(workoutDoneId: workout.workoutDoneId)
              else
                CheckButton(
                  exerciseId: exerciseId,
                  month: workout.month,
                  realizationReps: exerciseSets.last.reps,
                  week: week,
                ),
            ],
          ),
          const VSpacing.small(),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: exerciseSets.length,
            itemBuilder: (context, index) => ExerciseSetWidget(exerciseSet: exerciseSets[index]),
            separatorBuilder: (context, index) {
              return const VSpacing.extraSmall();
            },
          ),
        ],
      ),
    );
  }
}

class DummyIcon extends StatelessWidget {
  const DummyIcon();
  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.do_not_disturb_alt, color: Colors.transparent);
  }
}

class WeekTitle extends StatelessWidget {
  final WeekEnum week;

  const WeekTitle({Key key, @required this.week}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      week.toDisplayName(),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}

class UncheckButton extends StatelessWidget {
  final int workoutDoneId;

  const UncheckButton({Key key, @required this.workoutDoneId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.bloc<WorkoutBloc>().add(WorkoutMarkUndoneEvent(id: workoutDoneId));
      },
      icon: const Icon(
        Icons.check_circle,
        color: PPTheme.success,
      ),
    );
  }
}

class CheckButton extends StatelessWidget {
  final WeekEnum week;
  final int month;
  final int exerciseId;
  final int realizationReps;

  const CheckButton({
    Key key,
    @required this.week,
    @required this.month,
    @required this.exerciseId,
    @required this.realizationReps,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (week == WeekEnum.realization) {
          showDialog(
            context: context,
            builder: (context) => RealizationDialog(
              initialValue: realizationReps,
              onValidate: (value) => context.bloc<WorkoutBloc>().add(
                    WorkoutMarkDoneEvent(
                      exerciseId: exerciseId,
                      month: month,
                      week: week,
                      repsDone: value,
                    ),
                  ),
            ),
          );
        } else {
          context.bloc<WorkoutBloc>().add(
                WorkoutMarkDoneEvent(
                  exerciseId: exerciseId,
                  month: month,
                  week: week,
                ),
              );
        }
      },
      icon: Icon(
        Icons.check_circle_outline,
        color: Colors.black.withAlpha(50),
      ),
    );
  }
}
