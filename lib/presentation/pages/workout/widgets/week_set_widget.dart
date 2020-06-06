import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/workout/entities/accumulation_workout.dart';
import 'package:power_progress/domain/workout/entities/deload_workout.dart';
import 'package:power_progress/domain/workout/entities/exercise_set.dart';
import 'package:power_progress/domain/workout/entities/intensification_workout.dart';
import 'package:power_progress/domain/workout/entities/realization_workout.dart';
import 'package:power_progress/domain/workout/entities/workout.dart';
import 'package:power_progress/theme/pp_light_theme.dart';
import 'package:power_progress/presentation/pages/workout/widgets/exercise_set_widget.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/presentation/pages/workout/widgets/realization_dialog.dart';

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
                UncheckButton(
                  workoutDoneId: workout.workoutDoneId,
                  exerciseId: exerciseId,
                  week: week,
                  month: workout.month,
                )
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
  final int exerciseId;
  final WeekEnum week;
  final int month;

  const UncheckButton({
    Key key,
    @required this.workoutDoneId,
    @required this.exerciseId,
    @required this.week,
    @required this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.bloc<WorkoutBloc>().add(
              WorkoutMarkUndoneEvent(
                id: workoutDoneId,
                exerciseId: exerciseId,
                week: week,
                month: month,
              ),
            );
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

  void _handleWeekValidation(BuildContext context) {
    if (week == WeekEnum.realization) {
      _handleRealizationWeekValidation(context);
      return;
    }

    context.bloc<WorkoutBloc>().add(
          WorkoutMarkDoneEvent(
            exerciseId: exerciseId,
            month: month,
            week: week,
          ),
        );
  }

  void _handleRealizationWeekValidation(BuildContext context) {
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
  }

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
      onPressed: () => _handleWeekValidation(context),
      icon: Icon(
        Icons.check_circle_outline,
        color: Colors.black.withAlpha(50),
      ),
    );
  }
}
