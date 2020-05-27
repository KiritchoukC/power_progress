import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/exercise/exercise_bloc.dart';
import '../application/onboarding/onboarding_bloc.dart';
import '../application/workout/workout_bloc.dart';
import '../dependency_injection.dart' as di;
import '../presentation/router/route_paths.dart';
import '../presentation/router/router.dart';
import '../theme/pp_light_theme.dart';
import 'widgets/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseBloc>(create: (_) => di.sl<ExerciseBloc>()),
        BlocProvider<OnboardingBloc>(create: (_) => di.sl<OnboardingBloc>()),
        BlocProvider<WorkoutBloc>(create: (_) => di.sl<WorkoutBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Power Progress',
        theme: PPTheme.light(),
        // initialRoute: RoutePaths.onboardingWelcome,
        home: BlocListener<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingIsDoneState) {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                Navigator.of(context).pushReplacementNamed(RoutePaths.dashboard);
              });
            }

            if (state is OnboardingIsNotDoneState) {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                Navigator.of(context).pushReplacementNamed(RoutePaths.onboardingWelcome);
              });
            }
          },
          child: BlocBuilder<OnboardingBloc, OnboardingState>(
            builder: (context, state) {
              if (state is OnboardingInitialState) {
                context.bloc<OnboardingBloc>().add(OnboardingIsDoneEvent());
              }

              return Scaffold(body: SplashScreen());
            },
          ),
        ),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
