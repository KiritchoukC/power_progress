import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/exercise_name.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/incrementation.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/week.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/presentation/widgets/centered_loading.dart';
import 'package:power_progress/presentation/widgets/inputs/exercise_name_input.dart';
import 'package:power_progress/presentation/widgets/inputs/incrementation_input.dart';
import 'package:power_progress/presentation/widgets/inputs/one_rm_input.dart';
import 'package:power_progress/presentation/widgets/pp_appbar.dart';

class ExerciseAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExerciseBloc, ExerciseState>(
      listener: (context, state) {
        state.maybeMap(
          added: (value) => Navigator.of(context).pop(),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          addInProgress: (value) => Scaffold(
            appBar: PPAppBar(titleLabel: 'New exercise'),
            body: const CenteredLoading(),
          ),
          orElse: () => const _ExerciseForm(),
        );
      },
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
        nextWeek: Week(WeekEnum.accumulation),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PPAppBar(titleLabel: 'New exercise'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const VSpacing.small(),
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
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            BlocProvider.of<ExerciseBloc>(context).add(ExerciseEvent.add(exercise: _exercise));
          }
        },
        label: const Text('Add'),
        backgroundColor: Colors.black,
      ),
    );
  }
}
