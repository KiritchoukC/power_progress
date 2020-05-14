import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/util/spacing.dart';
import '../../../domain/entities/exercise.dart';
import '../../../domain/entities/value_objects/exercise_name.dart';
import '../../../domain/entities/value_objects/incrementation.dart';
import '../../../domain/entities/value_objects/month.dart';
import '../../../domain/entities/value_objects/one_rm.dart';
import '../../bloc/exercise_bloc.dart';
import '../../widgets/centered_loading.dart';
import '../../widgets/inputs/exercise_name_input.dart';
import '../../widgets/inputs/incrementation_input.dart';
import '../../widgets/inputs/one_rm_input.dart';
import '../../widgets/pp_appbar.dart';

class ExerciseFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PPAppBar(titleLabel: 'New exercise'),
      body: BlocConsumer<ExerciseBloc, ExerciseState>(
        listener: (context, state) {
          if (state is ExerciseAddedState) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          if (state is ExerciseAddingState) {
            return CenteredLoading();
          }

          return const _ExerciseForm();
        },
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
  TextEditingController _incrementationController;
  FocusNode _oneRmFocusNode;
  FocusNode _incrementationFocusNode;

  @override
  void initState() {
    _exerciseNameController = TextEditingController();
    _oneRmController = TextEditingController();
    _incrementationController = TextEditingController();
    _oneRmFocusNode = FocusNode();
    _incrementationFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _exerciseNameController?.dispose();
    _oneRmController?.dispose();
    _incrementationController?.dispose();
    _oneRmFocusNode?.dispose();
    _incrementationFocusNode?.dispose();
    super.dispose();
  }

  Exercise get _exercise => Exercise(
        id: 0,
        oneRm: OneRm.parse(_oneRmController.value.text),
        name: ExerciseName(_exerciseNameController.value.text),
        incrementation: Incrementation.parse(_incrementationController.value.text),
        month: Month(1),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        autovalidate: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExerciseNameInput(
                controller: _exerciseNameController,
                nextFocusNode: _oneRmFocusNode,
              ),
              const VSpacing.medium(),
              OneRmInput(
                controller: _oneRmController,
                focusNode: _oneRmFocusNode,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        BlocProvider.of<ExerciseBloc>(context)
                            .add(ExerciseAddEvent(exercise: _exercise));
                      }
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
