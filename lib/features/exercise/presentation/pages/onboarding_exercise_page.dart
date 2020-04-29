import 'package:flutter/material.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/shared/pp_form_field.dart';

class OnboardingExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'On which exercise do you want to progress ?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
              ),
              VSpacing.medium(),
              PPTextFormFieldWidget(
                controller: TextEditingController(),
                labelText: 'exercise',
              ),
              VSpacing.small(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Continue'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
