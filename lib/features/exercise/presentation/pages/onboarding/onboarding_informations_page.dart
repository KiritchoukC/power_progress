import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/router/route_paths.dart';
import '../../../../../core/util/spacing.dart';
import '../../../domain/entities/exercise.dart';
import '../../../domain/entities/value_objects/exercise_name.dart';
import '../../../domain/entities/value_objects/incrementation.dart';
import '../../../domain/entities/value_objects/one_rm.dart';
import '../../bloc/exercise_bloc.dart';
import '../../widgets/inputs/incrementation_input.dart';
import '../../widgets/inputs/one_rm_input.dart';
import 'onboarding_loading_page.dart';

class OnboardingInformationsPageArguments {
  final String exerciseName;

  OnboardingInformationsPageArguments({@required this.exerciseName});
}

class OnboardingInformationsPage extends StatelessWidget {
  final String exerciseName;

  const OnboardingInformationsPage({Key key, @required this.exerciseName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseBloc, ExerciseState>(
      listener: (BuildContext context, ExerciseState state) {
        if (state is ExerciseAddedState) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.of(context).pushReplacementNamed(RoutePaths.dashboard);
          });
        }
      },
      child: Scaffold(
        body: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            if (state is ExerciseAddingState) {
              return OnboardingLoadingPage();
            }

            return _InformationsForm(exerciseName: exerciseName);
          },
        ),
      ),
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
      );

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.exerciseName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24.0),
                ),
                const VSpacing.medium(),
                OneRmInput(
                  controller: _oneRmController,
                  nextFocusNode: _incrementationFocusNode,
                ),
                const VSpacing.extraSmall(),
                IncrementationInput(
                  controller: _incrementationController,
                  focusNode: _incrementationFocusNode,
                ),
                const VSpacing.small(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          BlocProvider.of<ExerciseBloc>(context)
                              .add(ExerciseAddEvent(exercise: _exercise));
                        }
                      },
                      child: const Text('Continue'),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
