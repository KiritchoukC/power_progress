import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../features/exercise/presentation/pages/onboarding/onboarding_exercise_page.dart';
import '../../features/exercise/presentation/pages/onboarding/onboarding_informations_page.dart';
import '../../features/exercise/presentation/pages/onboarding/onboarding_welcome_page.dart';
import 'route_paths.dart';

const String onboarding = "onboarding";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
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
