import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/exercise/exercise_bloc.dart';
import '../dependency_injection.dart' as di;
import '../presentation/router/route_paths.dart';
import '../presentation/router/router.dart';
import '../presentation/widgets/centered_loading.dart';
import '../theme/pp_light_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseBloc>(create: (_) => di.sl<ExerciseBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Power Progress',
        theme: PPTheme.light(),
        // initialRoute: RoutePaths.onboardingWelcome,
        home: BlocListener<ExerciseBloc, ExerciseState>(
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
          child: BlocBuilder<ExerciseBloc, ExerciseState>(
            builder: (context, state) {
              if (state is ExerciseInitialState) {
                BlocProvider.of<ExerciseBloc>(context).add(OnboardingIsDoneEvent());
              }

              return Scaffold(body: CenteredLoading());
            },
          ),
        ),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
