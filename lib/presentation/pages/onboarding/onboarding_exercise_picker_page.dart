import 'package:flutter/material.dart';

import 'package:power_progress/presentation/pages/onboarding/onboarding_informations_page.dart';
import 'package:power_progress/presentation/router/route_paths.dart';
import 'package:power_progress/presentation/widgets/exercise_picker.dart';

class OnboardingExercisePickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Color(0xFF654ea3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExercisePicker(
                onExerciseTap: (exerciseName) {
                  Navigator.of(context).pushNamed(
                    RoutePaths.onboardingInformations,
                    arguments: OnboardingInformationsPageArguments(
                      exerciseName: exerciseName,
                    ),
                  );
                },
              ),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).pushNamed(RoutePaths.onboardingExerciseCustom);
              },
              label: const Text('Or create custom one'),
              elevation: 3,
            ),
          ],
        ),
      ),
    );
  }
}
