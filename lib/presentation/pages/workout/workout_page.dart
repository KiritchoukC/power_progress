import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/workout/entities/month_workout.dart';
import 'package:power_progress/presentation/widgets/centered_loading.dart';
import 'package:power_progress/presentation/widgets/pp_appbar.dart';
import 'package:power_progress/presentation/widgets/delete_confirm_dialog.dart';
import 'package:power_progress/presentation/widgets/remove_button.dart';
import 'package:power_progress/presentation/pages/workout/widgets/week_set_widget.dart';

class WorkoutPageArguments {
  final Exercise exercise;

  WorkoutPageArguments({@required this.exercise});
}

class WorkoutPage extends StatefulWidget {
  final Exercise exercise;

  const WorkoutPage({Key key, @required this.exercise}) : super(key: key);

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  void initState() {
    context.bloc<WorkoutBloc>().add(
          WorkoutGenerateEvent(
            exerciseId: widget.exercise.id,
            month: widget.exercise.month,
            oneRm: widget.exercise.oneRm,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseBloc, ExerciseState>(
      listener: (context, state) {
        state.maybeMap(
          removed: (_) => Navigator.of(context).pop(),
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: PPAppBar(
          titleLabel: widget.exercise.name.getOrCrash(),
          actions: [
            RemoveButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DeleteConfirmDialog(exerciseIds: [widget.exercise.id]);
                  },
                );
              },
            )
          ],
        ),
        body: BlocConsumer<WorkoutBloc, WorkoutState>(
          listener: (context, state) {
            if (state is WorkoutMarkedDoneState || state is WorkoutMarkedUndoneState) {
              context.bloc<WorkoutBloc>().add(
                    WorkoutGenerateEvent(
                      exerciseId: widget.exercise.id,
                      month: widget.exercise.month,
                      oneRm: widget.exercise.oneRm,
                    ),
                  );
            }
          },
          builder: (context, state) {
            // if (state is WorkoutInitialState) {
            //   context.bloc<WorkoutBloc>().add(
            //         WorkoutGenerateEvent(
            //           exerciseId: widget.exercise.id,
            //           month: widget.exercise.month,
            //           oneRm: widget.exercise.oneRm,
            //         ),
            //       );
            // }

            if (state is WorkoutGeneratedState) {
              return _Body(
                monthWorkout: state.workout,
                exerciseId: widget.exercise.id,
                month: state.month,
              );
            }

            return const CenteredLoading();
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final MonthWorkout monthWorkout;
  final int exerciseId;
  final Month month;

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
        WeekSetWidget(
          workout: monthWorkout.accumulationWorkout,
          exerciseSets: monthWorkout.accumulationWorkout.exerciseSets,
          exerciseId: exerciseId,
        ),
        WeekSetWidget(
          workout: monthWorkout.intensificationWorkout,
          exerciseSets: monthWorkout.intensificationWorkout.exerciseSets,
          exerciseId: exerciseId,
        ),
        WeekSetWidget(
          workout: monthWorkout.realizationWorkout,
          exerciseSets: monthWorkout.realizationWorkout.exerciseSets,
          exerciseId: exerciseId,
        ),
        WeekSetWidget(
          workout: monthWorkout.deloadWorkout,
          exerciseSets: monthWorkout.deloadWorkout.exerciseSets,
          exerciseId: exerciseId,
        ),
      ],
    );
  }
}
