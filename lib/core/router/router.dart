import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../features/exercise/presentation/pages/onboarding_page.dart';
import 'route_paths.dart';

const String onboarding = "onboarding";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Game route
      case RoutePaths.onboarding:
        return MaterialPageRoute(
          builder: (_) => OnboardingPage(),
          settings: const RouteSettings(
            name: RoutePaths.onboarding,
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
