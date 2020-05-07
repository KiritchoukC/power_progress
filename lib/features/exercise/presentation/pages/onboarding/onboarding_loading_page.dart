import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/router/route_paths.dart';
import '../../../../../core/util/spacing.dart';
import '../../bloc/exercise_bloc.dart';

class OnboardingLoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseBloc, ExerciseState>(
      listener: (BuildContext context, ExerciseState state) {
        if (state is ExerciseAddLoadedState) {
          Navigator.of(context).pushReplacementNamed(RoutePaths.dashboard);
        }
      },
      child: Scaffold(
        body: SizedBox.expand(
          child: Container(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
                  ),
                  VSpacing.medium(),
                  Text(
                    'Generating your workouts...',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
