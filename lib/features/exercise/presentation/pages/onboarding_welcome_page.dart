import 'package:flutter/material.dart';
import 'package:power_progress/core/router/route_paths.dart';
import 'package:power_progress/core/util/spacing.dart';

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
              Text(
                'Welcome to power progress, this app use mathematics to plan your workouts.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
              ),
              VSpacing.medium(),
              Text(
                'Let\'s start already!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
              ),
              VSpacing.small(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RoutePaths.onboarding_exercise);
                    },
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
