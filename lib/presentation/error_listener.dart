import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/exercise/month/month_bloc.dart';
import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/application/onboarding/onboarding_bloc.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/presentation/theme/pp_light_theme.dart';

class ErrorListener extends StatelessWidget {
  final Widget child;

  const ErrorListener({@required this.child});

  void _handleError(BuildContext context, String errorMessage) {
    Scaffold.of(context).showSnackBar(SnackBar(
        content: Row(
      children: [
        const Icon(
          Icons.error,
          color: PPTheme.red,
        ),
        const HSpacing.small(),
        Text(errorMessage),
      ],
    )));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        ExerciseListener(onError: _handleError),
        OnboardingListener(onError: _handleError),
        WorkoutListener(onError: _handleError),
        WeekListener(onError: _handleError),
        MonthListener(onError: _handleError),
        OneRmListener(onError: _handleError),
      ],
      child: child,
    );
  }
}

class ExerciseListener extends BlocListener<ExerciseBloc, ExerciseState> {
  final Function(BuildContext, String) onError;
  ExerciseListener({@required this.onError})
      : super(
          listenWhen: (previous, current) => current.maybeWhen(
            error: (_) => true,
            orElse: () => false,
          ),
          listener: (context, state) {
            state.maybeWhen(
              error: (errorMessage) => onError(context, errorMessage),
              orElse: () {},
            );
          },
        );
}

class OnboardingListener extends BlocListener<OnboardingBloc, OnboardingState> {
  final Function(BuildContext, String) onError;
  OnboardingListener({@required this.onError})
      : super(
          listenWhen: (previous, current) => current.maybeWhen(
            error: (_) => true,
            orElse: () => false,
          ),
          listener: (context, state) {
            state.maybeWhen(
              error: (errorMessage) => onError(context, errorMessage),
              orElse: () {},
            );
          },
        );
}

class WorkoutListener extends BlocListener<WorkoutBloc, WorkoutState> {
  final Function(BuildContext, String) onError;
  WorkoutListener({@required this.onError})
      : super(
          listenWhen: (previous, current) => current.maybeWhen(
            error: (_) => true,
            orElse: () => false,
          ),
          listener: (context, state) {
            state.maybeWhen(
              error: (errorMessage) => onError(context, errorMessage),
              orElse: () {},
            );
          },
        );
}

class WeekListener extends BlocListener<WeekBloc, WeekState> {
  final Function(BuildContext, String) onError;
  WeekListener({@required this.onError})
      : super(
          listenWhen: (previous, current) => current.maybeWhen(
            error: (_, __) => true,
            orElse: () => false,
          ),
          listener: (context, state) {
            state.maybeWhen(
              error: (_, errorMessage) => onError(context, errorMessage),
              orElse: () {},
            );
          },
        );
}

class MonthListener extends BlocListener<MonthBloc, MonthState> {
  final Function(BuildContext, String) onError;
  MonthListener({@required this.onError})
      : super(
          listenWhen: (previous, current) => current.maybeWhen(
            error: (_, __) => true,
            orElse: () => false,
          ),
          listener: (context, state) {
            state.maybeWhen(
              error: (_, errorMessage) => onError(context, errorMessage),
              orElse: () {},
            );
          },
        );
}

class OneRmListener extends BlocListener<OneRmBloc, OneRmState> {
  final Function(BuildContext, String) onError;
  OneRmListener({@required this.onError})
      : super(
          listenWhen: (previous, current) => current.maybeWhen(
            alreadyExistError: () => true,
            noExistingDataForThisExerciseError: () => true,
            notFoundError: () => true,
            storageError: () => true,
            unexpectedError: () => true,
            orElse: () => false,
          ),
          listener: (context, state) {
            state.maybeWhen(
              alreadyExistError: () => onError(context, state.toErrorMessage()),
              noExistingDataForThisExerciseError: () => onError(context, state.toErrorMessage()),
              notFoundError: () => onError(context, state.toErrorMessage()),
              storageError: () => onError(context, state.toErrorMessage()),
              unexpectedError: () => onError(context, state.toErrorMessage()),
              orElse: () {},
            );
          },
        );
}
