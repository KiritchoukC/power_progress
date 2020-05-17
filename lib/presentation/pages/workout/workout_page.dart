import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/exercise/exercise_bloc.dart';
import '../../../application/workout/workout_bloc.dart';
import '../../../core/util/spacing.dart';
import '../../../domain/core/entities/weeks.dart';
import '../../../domain/exercise/entities/exercise.dart';
import '../../../domain/workout/entities/exercise_set.dart';
import '../../../domain/workout/entities/workout.dart';
import '../../../theme/pp_light_theme.dart';
import '../../widgets/centered_loading.dart';
import '../../widgets/pp_appbar.dart';
import '../../widgets/remove_button.dart';

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
          listener: (context, state) {},
          builder: (context, state) {
            if (state is WorkoutInitialState) {
              context.bloc<WorkoutBloc>().add(
                    WorkoutGenerateEvent(
                      month: exercise.month.getOrCrash(),
                      oneRm: exercise.oneRm.getOrCrash(),
                    ),
                  );
            }

            if (state is WorkoutGeneratedState) {
              return _Body(workout: state.workout);
            }

            return CenteredLoading();
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final Workout workout;

  const _Body({
    Key key,
    @required this.workout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _WeekSet(
          exerciseSets: workout.accumulationWorkout.exerciseSets,
          isDone: workout.accumulationWorkout.isDone,
          week: WeekEnum.accumulation,
        ),
        _WeekSet(
          exerciseSets: workout.intensificationWorkout.exerciseSets,
          isDone: workout.intensificationWorkout.isDone,
          week: WeekEnum.intensification,
        ),
        _WeekSet(
          exerciseSets: workout.realizationWorkout.exerciseSets,
          isDone: workout.realizationWorkout.isDone,
          week: WeekEnum.realization,
        ),
        _WeekSet(
          exerciseSets: workout.deloadWorkout.exerciseSets,
          isDone: workout.deloadWorkout.isDone,
          week: WeekEnum.deload,
        ),
      ],
    );
  }
}

class _WeekSet extends StatelessWidget {
  final List<ExerciseSet> exerciseSets;
  final bool isDone;
  final WeekEnum week;

  const _WeekSet({
    Key key,
    @required this.exerciseSets,
    @required this.isDone,
    @required this.week,
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
              const Icon(Icons.do_not_disturb_alt, color: Colors.transparent),
              Text(
                week.toDisplayName(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
              isDone
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.check_circle,
                        color: PPTheme.success,
                      ),
                    )
                  : IconButton(
                      onPressed: () {},
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
            exerciseSet.weight.toString(),
            style: _getTextStyle(context),
          ),
        ),
      ],
    );
  }
}
