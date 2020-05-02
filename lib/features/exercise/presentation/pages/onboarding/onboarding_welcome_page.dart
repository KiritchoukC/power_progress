import 'package:flutter/material.dart';

import '../../../../../core/router/route_paths.dart';
import '../../../../../core/util/spacing.dart';

class OnboardingWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to power progress, this app use mathematics to plan your workouts.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
              ),
              const VSpacing.medium(),
              const Text(
                'Let\'s start already!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
              ),
              const VSpacing.small(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RoutePaths.onboardingExercise);
                    },
                    child: const Text('Continue'),
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
