import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/util/spacing.dart';
import '../../../../../shared/pp_form_field.dart';
import '../../../domain/entities/exercise.dart';
import '../../bloc/exercise_bloc.dart';
import '../../widgets/centered_loading.dart';
import '../../widgets/pp_appbar.dart';

class ExerciseFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PPAppBar(titleLabel: 'New exercise'),
      body: BlocListener<ExerciseBloc, ExerciseState>(
        listener: (context, state) {
          if (state is ExerciseAddLoadedState) {
            Navigator.of(context).pop();
          }
        },
        child: BlocBuilder<ExerciseBloc, ExerciseState>(builder: (context, state) {
          if (state is ExerciseLoadingState) {
            return CenteredLoading();
          }

          return const _ExerciseForm();
        }),
      ),
    );
  }
}

class _ExerciseForm extends StatefulWidget {
  const _ExerciseForm({Key key}) : super(key: key);

  @override
  _ExerciseFormState createState() => _ExerciseFormState();
}

class _ExerciseFormState extends State<_ExerciseForm> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController _exerciseNameController;
  TextEditingController _oneRmController;
  TextEditingController _stepsController;
  FocusNode _oneRmFocusNode;
  FocusNode _stepsFocusNode;

  @override
  void initState() {
    _exerciseNameController = TextEditingController();
    _oneRmController = TextEditingController();
    _stepsController = TextEditingController();
    _oneRmFocusNode = FocusNode();
    _stepsFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _exerciseNameController?.dispose();
    _oneRmController?.dispose();
    _stepsController?.dispose();
    _oneRmFocusNode?.dispose();
    _stepsFocusNode?.dispose();
    super.dispose();
  }

  Widget get _exerciseNameField => PPTextFormFieldWidget(
        controller: _exerciseNameController,
        labelText: 'Exercise Name',
        textInputAction: TextInputAction.next,
        prefixIcon: Icons.fitness_center,
        onEditingComplete: () {
          _oneRmFocusNode.requestFocus();
        },
      );

  Widget get _oneRmField => PPTextFormFieldWidget(
        controller: _oneRmController,
        labelText: '1RM',
        textInputAction: TextInputAction.next,
        prefixIcon: Icons.confirmation_number,
        focusNode: _oneRmFocusNode,
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
        name: _exerciseNameController.value.text,
        incrementation: double.parse(_stepsController.value.text),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _exerciseNameField,
              const VSpacing.medium(),
              _oneRmField,
              const VSpacing.extraSmall(),
              _stepsField,
              const VSpacing.small(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RaisedButton(
                    onPressed: () {
                      BlocProvider.of<ExerciseBloc>(context)
                          .add(ExerciseAddEvent(exercise: _exercise));
                    },
                    child: const Text('Add'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
