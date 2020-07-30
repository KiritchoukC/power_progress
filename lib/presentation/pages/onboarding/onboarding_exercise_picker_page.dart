import 'package:flutter/material.dart';

import 'package:power_progress/presentation/theme/pp_theme.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/presentation/router/route_paths.dart';
import 'package:power_progress/presentation/widgets/inputs/exercise_name_input.dart';
import 'package:power_progress/presentation/pages/onboarding/onboarding_informations_page.dart';

class OnboardingExercisePickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: PPTheme.redBlackGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _ExerciseForm(),
        ),
      ),
    );
  }
}

class _ExerciseForm extends StatefulWidget {
  @override
  _ExerciseFormState createState() => _ExerciseFormState();
}

class _ExerciseFormState extends State<_ExerciseForm> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController _exerciseController;

  @override
  void initState() {
    _exerciseController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidate: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'On which exercise do you want to progress ?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
          const VSpacing.medium(),
          ExerciseNameInput(
            controller: _exerciseController,
            color: Colors.white,
          ),
          const VSpacing.medium(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.of(context).pushNamed(
                      RoutePaths.onboardingInformations,
                      arguments: OnboardingInformationsPageArguments(
                        exerciseName: _exerciseController.value.text,
                      ),
                    );
                  }
                },
                child: const Icon(Icons.arrow_forward),
              ),
              const HSpacing.medium(),
            ],
          )
        ],
      ),
    );
  }
}
