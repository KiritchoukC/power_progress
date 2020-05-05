import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/router/route_paths.dart';
import '../../../../../core/util/spacing.dart';
import '../../../../../shared/pp_form_field.dart';
import '../../../domain/entities/exercise.dart';
import '../../bloc/exercise_bloc.dart';

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
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _InformationsForm(
              exerciseName: exerciseName,
            ),
          )),
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
  TextEditingController _stepsController;
  FocusNode _stepsFocusNode;

  @override
  void initState() {
    _oneRmController = TextEditingController();
    _stepsController = TextEditingController();
    _stepsFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _oneRmController?.dispose();
    _stepsController?.dispose();
    _stepsFocusNode?.dispose();
    super.dispose();
  }

  Widget get _oneRmField => PPTextFormFieldWidget(
        controller: _oneRmController,
        labelText: '1RM',
        textInputAction: TextInputAction.next,
        prefixIcon: Icons.confirmation_number,
        onEditingComplete: () {
          _stepsFocusNode.requestFocus();
        },
      );

  Widget get _stepsField => PPTextFormFieldWidget(
        controller: _stepsController,
        labelText: 'Steps',
        prefixIcon: Icons.shutter_speed,
        focusNode: _stepsFocusNode,
      );

  Exercise get _exercise => Exercise(
        id: 0,
        oneRm: double.parse(_oneRmController.value.text),
        name: widget.exerciseName,
        incrementation: double.parse(_stepsController.value.text),
      );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
          _oneRmField,
          const VSpacing.extraSmall(),
          _stepsField,
          const VSpacing.small(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlocListener<ExerciseBloc, ExerciseState>(
                listener: (BuildContext context, ExerciseState state) {
                  if (state is AddExerciseLoadingState) {
                    Navigator.of(context).pushNamed(RoutePaths.onboardingLoading);
                  }
                },
                child: RaisedButton(
                  onPressed: () {
                    BlocProvider.of<ExerciseBloc>(context)
                        .add(AddExerciseEvent(exercise: _exercise));
                  },
                  child: const Text('Continue'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
