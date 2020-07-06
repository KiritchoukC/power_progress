import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/exercise/month/month_bloc.dart';
import 'package:power_progress/application/exercise/selection/selection_bloc.dart';
import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/application/onboarding/onboarding_bloc.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/dependency_injection.dart' as di;
import 'package:power_progress/presentation/error_listener.dart';
import 'package:power_progress/presentation/router/route_paths.dart';
import 'package:power_progress/presentation/router/router.dart';
import 'package:power_progress/presentation/theme/pp_light_theme.dart';
import 'package:power_progress/presentation/widgets/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseBloc>(create: (_) => di.sl<ExerciseBloc>()),
        BlocProvider<OnboardingBloc>(create: (_) => di.sl<OnboardingBloc>()),
        BlocProvider<WorkoutBloc>(create: (_) => di.sl<WorkoutBloc>()),
        BlocProvider<OneRmBloc>(create: (_) => di.sl<OneRmBloc>()),
        BlocProvider<WeekBloc>(create: (_) => di.sl<WeekBloc>()),
        BlocProvider<MonthBloc>(create: (_) => di.sl<MonthBloc>()),
        BlocProvider<SelectionBloc>(create: (_) => di.sl<SelectionBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Power Progress',
        theme: PPTheme.light(),
        home: Scaffold(
          body: ErrorListener(
            child: OnboardingListener(
              child: BlocBuilder<OnboardingBloc, OnboardingState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () {
                      context.bloc<OnboardingBloc>().add(const OnboardingEvent.isDone());
                      return SplashScreen();
                    },
                    orElse: () => SplashScreen(),
                  );
                },
              ),
            ),
          ),
        ),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}

class OnboardingListener extends StatelessWidget {
  final Widget child;

  const OnboardingListener({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        void navigateToDashboard() {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.of(context).pushReplacementNamed(RoutePaths.dashboard);
          });
        }

        void navigateToOnboarding() {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.of(context).pushReplacementNamed(RoutePaths.onboardingWelcome);
          });
        }

        state.maybeWhen(
          done: navigateToDashboard,
          notDone: navigateToOnboarding,
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
