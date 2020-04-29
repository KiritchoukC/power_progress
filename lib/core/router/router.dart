import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../features/exercise/presentation/pages/onboarding_exercise_page.dart';
import '../../features/exercise/presentation/pages/onboarding_welcome_page.dart';
import 'route_paths.dart';

const String onboarding = "onboarding";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Game route
      case RoutePaths.onboarding_welcome:
        return MaterialPageRoute(
          builder: (_) => OnboardingWelcomePage(),
          settings: const RouteSettings(
            name: RoutePaths.onboarding_welcome,
          ),
        );

      case RoutePaths.onboarding_exercise:
        return MaterialPageRoute(
          builder: (_) => OnboardingExercisePage(),
          settings: const RouteSettings(
            name: RoutePaths.onboarding_exercise,
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
