import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/exercise/month/month_bloc.dart';
import 'package:power_progress/application/exercise/selection/selection_bloc.dart';
import 'package:power_progress/application/exercise/week/week_bloc.dart';
import 'package:power_progress/application/exercise/week/week_cubit.dart';
import 'package:power_progress/application/onboarding/onboarding_bloc.dart';
import 'package:power_progress/application/one_rm/one_rm_bloc.dart';
import 'package:power_progress/application/settings/settings_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/dependency_injection.dart' as di;
import 'package:power_progress/domain/settings/settings.dart';
import 'package:power_progress/presentation/error_listener.dart';
import 'package:power_progress/presentation/router/route_paths.dart';
import 'package:power_progress/presentation/router/router.dart';
import 'package:power_progress/presentation/theme/pp_theme.dart';
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
        BlocProvider<WeekCubit>(create: (_) => di.sl<WeekCubit>()),
        BlocProvider<MonthBloc>(create: (_) => di.sl<MonthBloc>()),
        BlocProvider<SelectionBloc>(create: (_) => di.sl<SelectionBloc>()),
        BlocProvider<SettingsBloc>(create: (_) => di.sl<SettingsBloc>()),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          Widget _progress() {
            return MaterialAppWithSettings(settings: Settings.init());
          }

          Widget _fetch() {
            context.bloc<SettingsBloc>().add(const SettingsEvent.fetch());

            return _progress();
          }

          Widget _render(Settings settings) {
            return MaterialAppWithSettings(settings: settings);
          }

          return state.maybeWhen(
            initial: _fetch,
            fetched: _render,
            themeUpdated: _render,
            orElse: _progress,
          );
        },
      ),
    );
  }
}

class MaterialAppWithSettings extends StatelessWidget {
  final Settings settings;

  const MaterialAppWithSettings({
    Key key,
    @required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Power Progress',
      theme: PPTheme.light(),
      darkTheme: PPTheme.dark(),
      themeMode: settings.isThemeDark ? ThemeMode.dark : ThemeMode.light,
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
