import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/application/exercise/add/exercise_add_cubit.dart';

import 'package:power_progress/application/exercise/exercise_cubit.dart';
import 'package:power_progress/application/exercise/month/month_cubit.dart';
import 'package:power_progress/application/exercise/selection/selection_cubit.dart';
import 'package:power_progress/application/exercise/week/week_cubit.dart';
import 'package:power_progress/application/onboarding/onboarding_cubit.dart';
import 'package:power_progress/application/one_rm/one_rm_cubit.dart';
import 'package:power_progress/application/settings/settings_cubit.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';
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
        BlocProvider<ExerciseCubit>(create: (_) => di.sl<ExerciseCubit>()),
        BlocProvider<ExerciseAddCubit>(create: (_) => di.sl<ExerciseAddCubit>()),
        BlocProvider<OnboardingCubit>(create: (_) => di.sl<OnboardingCubit>()),
        BlocProvider<WorkoutCubit>(create: (_) => di.sl<WorkoutCubit>()),
        BlocProvider<OneRmCubit>(create: (_) => di.sl<OneRmCubit>()),
        BlocProvider<WeekCubit>(create: (_) => di.sl<WeekCubit>()),
        BlocProvider<MonthCubit>(create: (_) => di.sl<MonthCubit>()),
        BlocProvider<SelectionCubit>(create: (_) => di.sl<SelectionCubit>()),
        BlocProvider<SettingsCubit>(create: (_) => di.sl<SettingsCubit>()),
      ],
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          Widget _progress() {
            return MaterialAppWithSettings(settings: Settings.init());
          }

          Widget _fetch() {
            context.bloc<SettingsCubit>().fetch();

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
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return state.maybeWhen(
                  initial: () {
                    context.bloc<OnboardingCubit>().isDone();
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
    return BlocListener<OnboardingCubit, OnboardingState>(
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
