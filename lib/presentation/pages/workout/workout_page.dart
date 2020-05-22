import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/domain/workout/entities/accumulation_workout.dart';
import 'package:power_progress/domain/workout/entities/deload_workout.dart';
import 'package:power_progress/domain/workout/entities/intensification_workout.dart';
import 'package:power_progress/domain/workout/entities/realization_workout.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';

import '../../../application/exercise/exercise_bloc.dart';
import '../../../application/workout/workout_bloc.dart';
import '../../../core/util/spacing.dart';
import '../../../domain/core/entities/weeks.dart';
import '../../../domain/exercise/entities/exercise.dart';
import '../../../domain/workout/entities/exercise_set.dart';
import '../../../domain/workout/entities/month_workout.dart';
import '../../../domain/workout/entities/workout.dart';
import '../../../theme/pp_light_theme.dart';
import '../../widgets/centered_loading.dart';
import '../../widgets/pp_appbar.dart';
import '../../widgets/remove_button.dart';
import 'widgets/realization_dialog.dart';

class WorkoutPageArguments {
  final Exercise exercise;

  WorkoutPageArguments({@required this.exercise});
}

class WorkoutPage extends StatelessWidget {
  final Exercise exercise;

  const WorkoutPage({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseBloc, ExerciseState>(
      listener: (context, state) {
        if (state is ExerciseRemovedState) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: PPAppBar(
          titleLabel: exercise.name.getOrCrash(),
          actions: [
            RemoveButton(
              onPressed: () {
                context.bloc<ExerciseBloc>().add(ExerciseRemoveEvent(ids: [exercise.id]));
              },
            )
          ],
        ),
        body: BlocConsumer<WorkoutBloc, WorkoutState>(
          listener: (context, state) {
            if (state is WorkoutMarkedDoneState || state is WorkoutMarkedUndoneState) {
              context.bloc<WorkoutBloc>().add(
                    WorkoutGenerateEvent(
                      exerciseId: exercise.id,
                      month: exercise.month.getOrCrash(),
                      oneRm: exercise.oneRm.getOrCrash(),
                    ),
                  );
            }
          },
          builder: (context, state) {
            if (state is WorkoutInitialState) {
              context.bloc<WorkoutBloc>().add(
                    WorkoutGenerateEvent(
                      exerciseId: exercise.id,
                      month: exercise.month.getOrCrash(),
                      oneRm: exercise.oneRm.getOrCrash(),
                    ),
                  );
            }

            if (state is WorkoutGeneratedState) {
              return _Body(
                monthWorkout: state.workout,
                exerciseId: exercise.id,
                month: state.month,
              );
            }

            return CenteredLoading();
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final MonthWorkout monthWorkout;
  final int exerciseId;
  final int month;

  const _Body({
    Key key,
    @required this.monthWorkout,
    @required this.exerciseId,
    @required this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _WeekSet(
          workout: monthWorkout.accumulationWorkout,
          exerciseSets: monthWorkout.accumulationWorkout.exerciseSets,
          exerciseId: exerciseId,
        ),
        _WeekSet(
          workout: monthWorkout.intensificationWorkout,
          exerciseSets: monthWorkout.intensificationWorkout.exerciseSets,
          exerciseId: exerciseId,
        ),
        _WeekSet(
          workout: monthWorkout.realizationWorkout,
          exerciseSets: monthWorkout.realizationWorkout.exerciseSets,
          exerciseId: exerciseId,
        ),
        _WeekSet(
          workout: monthWorkout.deloadWorkout,
          exerciseSets: monthWorkout.deloadWorkout.exerciseSets,
          exerciseId: exerciseId,
        ),
      ],
    );
  }
}

class _WeekSet extends StatelessWidget {
  final Workout workout;
  final List<ExerciseSet> exerciseSets;
  final int exerciseId;

  const _WeekSet({
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
              const Icon(Icons.do_not_disturb_alt, color: Colors.transparent),
              Text(
                week.toDisplayName(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
              workout.isDone
                  ? IconButton(
                      onPressed: () {
                        context
                            .bloc<WorkoutBloc>()
                            .add(WorkoutMarkUndoneEvent(id: workout.workoutDoneId));
                      },
                      icon: const Icon(
                        Icons.check_circle,
                        color: PPTheme.success,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        if (week == WeekEnum.realization) {
                          showDialog(
                            context: context,
                            builder: (context) => RealizationDialog(
                              initialValue: exerciseSets.last.reps,
                              onValidate: (value) => context.bloc<WorkoutBloc>().add(
                                    WorkoutMarkDoneEvent(
                                      exerciseId: exerciseId,
                                      month: workout.month,
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
                                  month: workout.month,
                                  week: week,
                                ),
                              );
                        }
                      },
                      icon: Icon(
                        Icons.check_circle_outline,
                        color: Colors.black.withAlpha(50),
                      ),
                    ),
            ],
          ),
          const VSpacing.small(),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: exerciseSets.length,
            itemBuilder: (context, index) => _ExerciseSet(exerciseSet: exerciseSets[index]),
            separatorBuilder: (context, index) {
              return const VSpacing.extraSmall();
            },
          ),
        ],
      ),
    );
  }
}

class _ExerciseSet extends StatelessWidget {
  final ExerciseSet exerciseSet;

  TextStyle _getTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1;
  }

  const _ExerciseSet({Key key, @required this.exerciseSet}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 30,
          child: Text(
            exerciseSet.sets.toString(),
            style: _getTextStyle(context),
          ),
        ),
        Container(
          width: 30,
          child: Text(
            'X',
            style: _getTextStyle(context),
          ),
        ),
        Container(
          width: 30,
          child: Text(
            exerciseSet.reps.toString(),
            style: _getTextStyle(context),
          ),
        ),
        Container(
          width: 30,
          child: Text(
            '@',
            style: _getTextStyle(context),
          ),
        ),
        Container(
          width: 40,
          child: Text(
            exerciseSet.weight.formattedValue.getOrElse(() => 'E'),
            style: _getTextStyle(context),
          ),
        ),
      ],
    );
  }
}
