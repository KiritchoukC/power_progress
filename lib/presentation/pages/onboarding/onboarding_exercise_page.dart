import 'package:flutter/material.dart';

import 'package:power_progress/presentation/theme/pp_theme.dart';
import 'package:power_progress/presentation/widgets/exercise_picker.dart';

class OnboardingExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: PPTheme.redBlackGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ExercisePicker(),
        ),
      ),
    );
  }
}
