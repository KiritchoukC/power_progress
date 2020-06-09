import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
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
          WorkoutEvent.generate(
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
        state.maybeWhen(
          removed: () => Navigator.of(context).pop(),
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
            void generate() {
              context.bloc<WorkoutBloc>().add(
                    WorkoutEvent.generate(
                      exerciseId: widget.exercise.id,
                      month: widget.exercise.month,
                      oneRm: widget.exercise.oneRm,
                    ),
                  );
            }

            state.maybeWhen(
              markedDone: generate,
              markedUndone: generate,
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              generated: (value) => _Body(
                monthWorkout: value.workout,
                exerciseId: widget.exercise.id,
                month: value.month,
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
  final Month month;

  const _Body({
    Key key,
    @required this.monthWorkout,
    @required this.exerciseId,
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
              isValidatable: monthWorkout.validatable(const WeekEnum.accumulation()),
              isInvalidatable: monthWorkout.invalidatable(const WeekEnum.accumulation()),
            ),
            WeekSetWidget(
              workout: monthWorkout.intensificationWorkout,
              exerciseSets: monthWorkout.intensificationWorkout.exerciseSets,
              exerciseId: exerciseId,
              isValidatable: monthWorkout.validatable(const WeekEnum.intensification()),
              isInvalidatable: monthWorkout.invalidatable(const WeekEnum.intensification()),
            ),
            WeekSetWidget(
              workout: monthWorkout.realizationWorkout,
              exerciseSets: monthWorkout.realizationWorkout.exerciseSets,
              exerciseId: exerciseId,
              isValidatable: monthWorkout.validatable(const WeekEnum.realization()),
              isInvalidatable: monthWorkout.invalidatable(const WeekEnum.realization()),
            ),
            WeekSetWidget(
              workout: monthWorkout.deloadWorkout,
              exerciseSets: monthWorkout.deloadWorkout.exerciseSets,
              exerciseId: exerciseId,
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

class MonthNavigation extends StatelessWidget {
  final int currentMonth;
  final OneRm oneRm;
  final int exerciseId;

  Color get _color => Colors.grey.shade700;

  bool get isPreviousNavigatable => currentMonth > 1;

  const MonthNavigation({
    Key key,
    @required this.currentMonth,
    @required this.oneRm,
    @required this.exerciseId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300.withAlpha(200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: isPreviousNavigatable ? _color : Colors.transparent,
              ),
              onPressed: isPreviousNavigatable
                  ? () {
                      context.bloc<WorkoutBloc>().add(
                            WorkoutEvent.generate(
                              exerciseId: exerciseId,
                              month: Month(currentMonth - 1),
                              oneRm: oneRm,
                            ),
                          );
                    }
                  : null),
          Text(
            'Month $currentMonth',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                  color: _color,
                ),
          ),
          IconButton(
              icon: Icon(
                Icons.chevron_right,
                color: _color,
              ),
              onPressed: () {
                context.bloc<WorkoutBloc>().add(
                      WorkoutEvent.generate(
                        exerciseId: exerciseId,
                        month: Month(currentMonth + 1),
                        oneRm: oneRm,
                      ),
                    );
              }),
        ],
      ),
    );
  }
}
