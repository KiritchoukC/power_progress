import 'package:flutter/material.dart';

import '../../../../../core/router/route_paths.dart';
import '../../../../../core/util/spacing.dart';
import '../../widgets/inputs/exercise_name_input.dart';
import 'onboarding_informations_page.dart';

class OnboardingExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'On which exercise do you want to progress ?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0),
          ),
          const VSpacing.medium(),
          ExerciseNameInput(controller: _exerciseController),
          const VSpacing.small(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
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
                child: const Text('Continue'),
              )
            ],
          )
        ],
      ),
    );
  }
}
