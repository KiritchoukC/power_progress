import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import 'core/router/route_paths.dart';
import 'core/router/router.dart';

Future main() async {
  // configure Logging
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) => print(record.toString()));

  // init logging of BLoC transitions
  initBlocLogging();

  // ensure the widgets binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // run the app
  runApp(MyApp());
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Power Progress',
      initialRoute: RoutePaths.onboardingWelcome,
      onGenerateRoute: Router.generateRoute,
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
