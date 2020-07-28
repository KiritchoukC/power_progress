import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/presentation/pages/exercise/add/exercise_add_page.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/dashboard_page.dart';
import 'package:power_progress/presentation/pages/onboarding/onboarding_exercise_page.dart';
import 'package:power_progress/presentation/pages/onboarding/onboarding_informations_page.dart';
import 'package:power_progress/presentation/pages/onboarding/onboarding_welcome_page.dart';
import 'package:power_progress/presentation/pages/settings/settings_page.dart';
import 'package:power_progress/presentation/pages/workout/workout_page.dart';
import 'package:power_progress/presentation/router/route_paths.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.dashboard:
        return DashboardPageRoute();

      case RoutePaths.exerciseAdd:
        return ExerciseAddPageRoute();

      case RoutePaths.exerciseWorkout:
        return WorkoutPageRoute(settings.arguments as WorkoutPageArguments);

      case RoutePaths.onboardingWelcome:
        return OnboardingWelcomePageRoute();

      case RoutePaths.onboardingExercise:
        return OnboardingExercisePageRoute();

      case RoutePaths.onboardingInformations:
        return OnboardingInformationsPageRoute(
            settings.arguments as OnboardingInformationsPageArguments);

      case RoutePaths.settings:
        return SettingsPageRoute();

      // NotFound route
      default:
        return NotFoundPageRoute(settings);
    }
  }
}

class NotFoundPageRoute extends MaterialPageRoute {
  NotFoundPageRoute(RouteSettings routeSettings)
      : super(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
}

class DashboardPageRoute extends MaterialPageRoute {
  DashboardPageRoute()
      : super(
          builder: (_) => DashboardPage(),
          settings: const RouteSettings(
            name: RoutePaths.dashboard,
          ),
        );
}

class ExerciseAddPageRoute extends MaterialPageRoute {
  ExerciseAddPageRoute()
      : super(
          builder: (_) => ExerciseAddPage(),
          settings: const RouteSettings(
            name: RoutePaths.exerciseAdd,
          ),
          fullscreenDialog: true,
        );
}

class OnboardingWelcomePageRoute extends MaterialPageRoute {
  OnboardingWelcomePageRoute()
      : super(
          builder: (_) => OnboardingWelcomePage(),
          settings: const RouteSettings(
            name: RoutePaths.onboardingWelcome,
          ),
        );
}

class OnboardingExercisePageRoute extends MaterialPageRoute {
  OnboardingExercisePageRoute()
      : super(
          builder: (_) => OnboardingExercisePage(),
          settings: const RouteSettings(
            name: RoutePaths.onboardingExercise,
          ),
        );
}

class OnboardingInformationsPageRoute extends MaterialPageRoute {
  OnboardingInformationsPageRoute(OnboardingInformationsPageArguments routeArgs)
      : super(
          builder: (_) => OnboardingInformationsPage(
            exerciseName: routeArgs.exerciseName,
          ),
          settings: const RouteSettings(
            name: RoutePaths.onboardingInformations,
          ),
        );
}

class WorkoutPageRoute extends MaterialPageRoute {
  WorkoutPageRoute(WorkoutPageArguments routeArgs)
      : super(
          builder: (context) {
            context.bloc<WorkoutCubit>().resetState();
            return WorkoutPage(
              exercise: routeArgs.exercise,
            );
          },
          settings: const RouteSettings(
            name: RoutePaths.exerciseWorkout,
          ),
        );
}

class SettingsPageRoute extends MaterialPageRoute {
  SettingsPageRoute()
      : super(
          builder: (context) {
            return SettingsPage();
          },
          settings: const RouteSettings(
            name: RoutePaths.settings,
          ),
        );
}
