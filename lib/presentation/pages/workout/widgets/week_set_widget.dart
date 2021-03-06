import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/workout/workout_cubit.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/workout/exercise_set.dart';
import 'package:power_progress/domain/workout/workout.dart';
import 'package:power_progress/presentation/theme/pp_theme.dart';
import 'package:power_progress/presentation/pages/workout/widgets/exercise_set_widget.dart';
import 'package:power_progress/presentation/pages/workout/widgets/realization_dialog.dart';

class WeekSetWidget extends StatelessWidget {
  final Workout workout;
  final List<ExerciseSet> exerciseSets;
  final int exerciseId;
  final Incrementation incrementation;
  final bool isValidatable;
  final bool isInvalidatable;

  const WeekSetWidget({
    Key key,
    @required this.workout,
    @required this.exerciseSets,
    @required this.exerciseId,
    @required this.incrementation,
    @required this.isValidatable,
    @required this.isInvalidatable,
  }) : super(key: key);

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
              WeekTitle(week: workout.week),
              if (workout.isDone)
                UncheckButton(
                  workoutDoneId: workout.workoutDoneId,
                  exerciseId: exerciseId,
                  incrementation: incrementation,
                  week: workout.week,
                  month: workout.month,
                  oneRm: workout.oneRm,
                  enabled: isInvalidatable,
                )
              else
                CheckButton(
                  exerciseId: exerciseId,
                  incrementation: incrementation,
                  month: workout.month,
                  realizationReps: exerciseSets.last.reps,
                  week: workout.week,
                  oneRm: workout.oneRm,
                  enabled: isValidatable,
                ),
            ],
          ),
          const VSpacing.small(),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: exerciseSets.length,
            itemBuilder: (context, index) => ExerciseSetWidget(
              exerciseSet: exerciseSets[index],
              isWeekDone: workout.isDone,
            ),
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
  final Option<int> workoutDoneId;
  final int exerciseId;
  final Incrementation incrementation;
  final WeekEnum week;
  final Month month;
  final OneRm oneRm;
  final bool enabled;

  const UncheckButton({
    Key key,
    @required this.workoutDoneId,
    @required this.exerciseId,
    @required this.incrementation,
    @required this.week,
    @required this.month,
    @required this.oneRm,
    @required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: enabled
          ? () {
              context.bloc<WorkoutCubit>().markUndone(
                    id: workoutDoneId,
                    exerciseId: exerciseId,
                    incrementation: incrementation,
                    week: week,
                    month: month,
                    oneRm: oneRm,
                  );
            }
          : null,
      icon: Icon(
        Icons.check_circle,
        color: enabled ? PPTheme.success : PPTheme.success.withAlpha(50),
      ),
    );
  }
}

class CheckButton extends StatelessWidget {
  final WeekEnum week;
  final Month month;
  final int exerciseId;
  final Incrementation incrementation;
  final int realizationReps;
  final OneRm oneRm;
  final bool enabled;

  void _handleWeekValidation(BuildContext context) {
    week.maybeWhen(
      realization: () => _handleRealizationWeekValidation(context),
      orElse: () => context.bloc<WorkoutCubit>().markDone(
            exerciseId: exerciseId,
            incrementation: incrementation,
            month: month,
            week: week,
            oneRm: oneRm,
            repsDone: none(),
          ),
    );
  }

  void _handleRealizationWeekValidation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => RealizationDialog(
        initialValue: realizationReps,
        onValidate: (value) => context.bloc<WorkoutCubit>().markDone(
              exerciseId: exerciseId,
              incrementation: incrementation,
              month: month,
              week: week,
              oneRm: oneRm,
              repsDone: some(value),
            ),
      ),
    );
  }

  Color _getIconColor(BuildContext context) {
    return enabled ? Theme.of(context).primaryColor : Theme.of(context).primaryColor.withAlpha(50);
  }

  const CheckButton({
    Key key,
    @required this.week,
    @required this.month,
    @required this.exerciseId,
    @required this.incrementation,
    @required this.realizationReps,
    @required this.oneRm,
    @required this.enabled,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: enabled ? () => _handleWeekValidation(context) : null,
      icon: Icon(
        Icons.check_circle_outline,
        color: _getIconColor(context),
      ),
    );
  }
}
