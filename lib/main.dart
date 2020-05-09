import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';

import 'core/router/route_paths.dart';
import 'core/router/router.dart';
import 'dependency_injection.dart' as di;
import 'features/exercise/presentation/bloc/exercise_bloc.dart';
import 'features/exercise/presentation/widgets/centered_loading.dart';

Future main() async {
  // configure Logging
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) => print(record.toString()));

  // init logging of BLoC transitions
  initBlocLogging();

  // init hive local storage
  await initHive();

  // dependency injection
  await di.init();

  // ensure the widgets binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // run the app
  runApp(MyApp());
}

Future initHive() async {
  // no need to init hive for browser
  if (!kIsWeb) {
    // init Hive for mobile
    await Hive.initFlutter();
  }
}

void initBlocLogging() {
  // only in debug mode
  if (!kReleaseMode) {
    BlocSupervisor.delegate = SimpleBlocDelegate();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseBloc>(create: (_) => di.sl<ExerciseBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Power Progress',
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

class SimpleBlocDelegate extends BlocDelegate {
  final _logger = Logger('Bloc');
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    _logger.info(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _logger.info(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    _logger.info(error);
  }
}
