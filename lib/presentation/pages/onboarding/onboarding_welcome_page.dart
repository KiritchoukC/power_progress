import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/onboarding/onboarding_cubit.dart';
import 'package:power_progress/presentation/theme/gradients.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/presentation/router/route_paths.dart';

class OnboardingWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: burningOrangeGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const VSpacing.large(),
              const VSpacing.large(),
              const Text(
                'Welcome to power progress, this app use mathematics to plan your workouts.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
              const VSpacing.medium(),
              const Text(
                "Let's start already!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              const VSpacing.small(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RoutePaths.onboardingExercisePicker);
                    },
                    child: const Icon(Icons.arrow_forward),
                  ),
                  const HSpacing.medium(),
                ],
              ),
              const VSpacing.large(),
              FlatButton(
                onPressed: () {
                  context.bloc<OnboardingCubit>().markDone();
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(RoutePaths.dashboard, (route) => false);
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
