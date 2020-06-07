import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/presentation/widgets/centered_loading.dart';
import 'package:power_progress/theme/pp_light_theme.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/onboarding/onboarding_bloc.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/exercise_name.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/incrementation.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/week.dart';
import 'package:power_progress/presentation/router/route_paths.dart';
import 'package:power_progress/presentation/widgets/inputs/incrementation_input.dart';
import 'package:power_progress/presentation/widgets/inputs/one_rm_input.dart';

class OnboardingInformationsPageArguments {
  final String exerciseName;

  OnboardingInformationsPageArguments({@required this.exerciseName});
}

class OnboardingInformationsPage extends StatelessWidget {
  final String exerciseName;

  const OnboardingInformationsPage({Key key, @required this.exerciseName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: PPTheme.royalBlueGradient,
        ),
        child: BlocConsumer<ExerciseBloc, ExerciseState>(
          listener: (BuildContext context, ExerciseState state) {
            state.maybeWhen(
              added: () {
                Future.delayed(const Duration(seconds: 1)).then(
                  (_) => WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.of(context).pushReplacementNamed(RoutePaths.dashboard);
                  }),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => _Body(exerciseName: exerciseName),
              orElse: () => const _Loading(),
            );
          },
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 72,
        child: Column(
          children: const [
            CenteredLoading(
              color: Colors.white,
            ),
            VSpacing.small(),
            Text(
              'Generating your workout...',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
    @required this.exerciseName,
  }) : super(key: key);

  final String exerciseName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: _InformationsForm(exerciseName: exerciseName),
    );
  }
}

class _InformationsForm extends StatefulWidget {
  final String exerciseName;

  const _InformationsForm({Key key, @required this.exerciseName}) : super(key: key);

  @override
  _InformationsFormState createState() => _InformationsFormState();
}

class _InformationsFormState extends State<_InformationsForm> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController _oneRmController;
  TextEditingController _incrementationController;
  FocusNode _incrementationFocusNode;

  @override
  void initState() {
    _oneRmController = TextEditingController();
    _incrementationController = TextEditingController();
    _incrementationFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _oneRmController?.dispose();
    _incrementationController?.dispose();
    _incrementationFocusNode?.dispose();
    super.dispose();
  }

  Exercise get _exercise => Exercise(
        id: 0,
        oneRm: OneRm.parse(_oneRmController.value.text),
        name: ExerciseName(widget.exerciseName),
        incrementation: Incrementation.parse(_incrementationController.value.text),
        month: Month(1),
        nextWeek: Week(WeekEnum.accumulation),
      );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidate: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.exerciseName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
          const VSpacing.medium(),
          OneRmInput(
            controller: _oneRmController,
            nextFocusNode: _incrementationFocusNode,
            color: Colors.white,
          ),
          const VSpacing.extraSmall(),
          IncrementationInput(
            controller: _incrementationController,
            focusNode: _incrementationFocusNode,
            color: Colors.white,
          ),
          const VSpacing.small(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    context.bloc<ExerciseBloc>().add(ExerciseEvent.add(exercise: _exercise));
                    context.bloc<OnboardingBloc>().add(OnboardingDoneEvent());
                  }
                },
                child: const Icon(Icons.check),
              ),
              const HSpacing.medium(),
            ],
          )
        ],
      ),
    );
  }
}
