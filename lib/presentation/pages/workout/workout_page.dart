import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/exercise_cubit.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/workout/month_workout.dart';
import 'package:power_progress/presentation/pages/workout/widgets/month_navigation.dart';
import 'package:power_progress/presentation/widgets/centered_loading.dart';
import 'package:power_progress/presentation/widgets/pp_appbar.dart';
import 'package:power_progress/presentation/widgets/delete_confirm_dialog.dart';
import 'package:power_progress/presentation/widgets/remove_button.dart';
import 'package:power_progress/presentation/pages/workout/widgets/week_set_widget.dart';

class WorkoutPageArguments {
  final Exercise exercise;

  WorkoutPageArguments({@required this.exercise});
}

class WorkoutPage extends StatelessWidget {
  final Exercise exercise;

  WorkoutPage({Key key, @required this.exercise}) : super(key: key ?? Key(exercise.id.toString()));

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseCubit, ExerciseState>(
      listener: (context, state) {
        state.maybeWhen(
          removed: () => Navigator.of(context).pop(),
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: PPAppBar(
          title: Hero(
            tag: 'exercise-${exercise.id}',
            transitionOnUserGestures: true,
            child: Material(
              type: MaterialType.transparency, // likely needed
              child: Text(
                exercise.name.getOrCrash(),
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .apply(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
          actions: [
            RemoveButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DeleteConfirmDialog(exerciseIds: [exercise.id]);
                  },
                );
              },
            )
          ],
        ),
        body: BlocConsumer<WorkoutCubit, WorkoutState>(
          listener: (context, state) {
            void generate(int id, Month month, OneRm oneRm) {
              context.bloc<WorkoutCubit>().generate(
                    exerciseId: id,
                    month: month,
                  );
            }

            state.maybeWhen(
              markedDone: generate,
              markedUndone: generate,
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                context.bloc<WorkoutCubit>().generate(
                      exerciseId: exercise.id,
                      month: exercise.month,
                    );

                return const CenteredLoading();
              },
              generated: (workout, month) => _Body(
                monthWorkout: workout,
                exerciseId: exercise.id,
                incrementation: exercise.incrementation,
                month: month,
              ),
              orElse: () => const CenteredLoading(),
            );
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final MonthWorkout monthWorkout;
  final int exerciseId;
  final Incrementation incrementation;
  final Month month;

  const _Body({
    Key key,
    @required this.monthWorkout,
    @required this.exerciseId,
    @required this.incrementation,
    @required this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            const VSpacing(height: 50),
            WeekSetWidget(
              workout: monthWorkout.accumulationWorkout,
              exerciseSets: monthWorkout.accumulationWorkout.exerciseSets,
              exerciseId: exerciseId,
              incrementation: incrementation,
              isValidatable: monthWorkout.validatable(const WeekEnum.accumulation()),
              isInvalidatable: monthWorkout.invalidatable(const WeekEnum.accumulation()),
            ),
            WeekSetWidget(
              workout: monthWorkout.intensificationWorkout,
              exerciseSets: monthWorkout.intensificationWorkout.exerciseSets,
              exerciseId: exerciseId,
              incrementation: incrementation,
              isValidatable: monthWorkout.validatable(const WeekEnum.intensification()),
              isInvalidatable: monthWorkout.invalidatable(const WeekEnum.intensification()),
            ),
            WeekSetWidget(
              workout: monthWorkout.realizationWorkout,
              exerciseSets: monthWorkout.realizationWorkout.exerciseSets,
              exerciseId: exerciseId,
              incrementation: incrementation,
              isValidatable: monthWorkout.validatable(const WeekEnum.realization()),
              isInvalidatable: monthWorkout.invalidatable(const WeekEnum.realization()),
            ),
            WeekSetWidget(
              workout: monthWorkout.deloadWorkout,
              exerciseSets: monthWorkout.deloadWorkout.exerciseSets,
              exerciseId: exerciseId,
              incrementation: incrementation,
              isValidatable: monthWorkout.validatable(const WeekEnum.deload()),
              isInvalidatable: monthWorkout.invalidatable(const WeekEnum.deload()),
            ),
          ],
        ),
        Column(
          children: [
            MonthNavigation(
              currentMonth: month.getOrCrash(),
              exerciseId: exerciseId,
              oneRm: monthWorkout.oneRm,
            ),
          ],
        ),
      ],
    );
  }
}
