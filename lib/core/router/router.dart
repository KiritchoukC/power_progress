import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:power_progress/features/exercise/presentation/pages/exercise/exercise_form_page.dart';

import '../../features/exercise/presentation/pages/dashboard/dashboard_page.dart';
import '../../features/exercise/presentation/pages/onboarding/onboarding_exercise_page.dart';
import '../../features/exercise/presentation/pages/onboarding/onboarding_informations_page.dart';
import '../../features/exercise/presentation/pages/onboarding/onboarding_loading_page.dart';
import '../../features/exercise/presentation/pages/onboarding/onboarding_welcome_page.dart';
import 'route_paths.dart';

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
          builder: (_) => ExerciseFormPage(),
          settings: const RouteSettings(
            name: RoutePaths.exerciseAdd,
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

      case RoutePaths.onboardingLoading:
        return MaterialPageRoute(
          builder: (_) => OnboardingLoadingPage(),
          settings: const RouteSettings(
            name: RoutePaths.onboardingLoading,
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
