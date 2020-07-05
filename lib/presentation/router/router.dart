import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/presentation/pages/exercise/add/exercise_add_page.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/dashboard_page.dart';
import 'package:power_progress/presentation/pages/onboarding/onboarding_exercise_page.dart';
import 'package:power_progress/presentation/pages/onboarding/onboarding_informations_page.dart';
import 'package:power_progress/presentation/pages/onboarding/onboarding_welcome_page.dart';
import 'package:power_progress/presentation/pages/workout/workout_page.dart';
import 'package:power_progress/presentation/router/route_paths.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';

const String onboarding = "onboarding";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.dashboard:
        return MaterialPageRoute(
          builder: (_) => DashboardPage(),
          settings: const RouteSettings(
            name: RoutePaths.dashboard,
          ),
        );

      case RoutePaths.exerciseAdd:
        return MaterialPageRoute(
          builder: (_) => ExerciseAddPage(),
          settings: const RouteSettings(
            name: RoutePaths.exerciseAdd,
          ),
          fullscreenDialog: true,
        );

      case RoutePaths.exerciseWorkout:
        final args = settings.arguments as WorkoutPageArguments;
        return MaterialPageRoute(
          builder: (context) {
            context.bloc<WorkoutBloc>().add(const WorkoutEvent.resetState());
            return WorkoutPage(
              exercise: args.exercise,
            );
          },
          settings: const RouteSettings(
            name: RoutePaths.exerciseWorkout,
          ),
        );

      case RoutePaths.onboardingWelcome:
        return MaterialPageRoute(
          builder: (_) => OnboardingWelcomePage(),
          settings: const RouteSettings(
            name: RoutePaths.onboardingWelcome,
          ),
        );

      case RoutePaths.onboardingExercise:
        return MaterialPageRoute(
          builder: (_) => OnboardingExercisePage(),
          settings: const RouteSettings(
            name: RoutePaths.onboardingExercise,
          ),
        );

      case RoutePaths.onboardingInformations:
        final args = settings.arguments as OnboardingInformationsPageArguments;
        return MaterialPageRoute(
          builder: (_) => OnboardingInformationsPage(
            exerciseName: args.exerciseName,
          ),
          settings: const RouteSettings(
            name: RoutePaths.onboardingInformations,
          ),
        );

      // NotFound route
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
