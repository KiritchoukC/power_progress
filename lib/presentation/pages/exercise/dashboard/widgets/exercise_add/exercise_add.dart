import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/add/exercise_add_cubit.dart';
import 'package:power_progress/application/exercise/exercise_cubit.dart';
import 'package:power_progress/core/util/spacing.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/domain/exercise/value_objects/exercise_name.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/exercise/value_objects/week.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/exercise_add/exercise_add_animation.dart';
import 'package:power_progress/presentation/theme/gradients.dart';
import 'package:power_progress/presentation/widgets/inputs/exercise_name_input.dart';
import 'package:power_progress/presentation/widgets/inputs/one_rm_input.dart';
import 'package:power_progress/presentation/widgets/utils/shadow_elevation.dart';

class ExerciseAdd extends StatefulWidget {
  @override
  _ExerciseAddState createState() => _ExerciseAddState();
}

class _ExerciseAddState extends State<ExerciseAdd> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController _exerciseNameController;
  TextEditingController _oneRmController;
  FocusNode _oneRmFocusNode;

  @override
  void initState() {
    super.initState();

    _exerciseNameController = TextEditingController();
    _oneRmController = TextEditingController();
    _oneRmFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _exerciseNameController?.dispose();
    _oneRmController?.dispose();
    _oneRmFocusNode?.dispose();

    super.dispose();
  }

  OneRm get _oneRm => OneRm.parse(_oneRmController.value.text);

  Exercise get _exercise => Exercise(
        id: 0,
        name: ExerciseName(_exerciseNameController.value.text),
        incrementation: Incrementation.deflt(),
        month: Month(1),
        nextWeek: Week(const WeekEnum.accumulation()),
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseAddCubit, ExerciseAddState>(
      listenWhen: (previous, current) => current.maybeWhen(
        formValidationRequired: () => true,
        orElse: () => false,
      ),
      listener: (context, state) {
        if (_formKey.currentState.validate()) {
          context.bloc<ExerciseCubit>().add(exercise: _exercise, oneRm: _oneRm);
          context.bloc<ExerciseAddCubit>().validForm();
        } else {
          context.bloc<ExerciseAddCubit>().invalidForm();
        }
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: 300,
        ),
        child: Stack(
          children: [
            Container(
              height: 240,
            ),
            ExerciseAddAnimation(
              child: Container(
                decoration: BoxDecoration(
                  gradient: burningOrangeGradient,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: elevation3,
                ),
                height: 200,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  autovalidate: true,
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ExerciseNameInput(
                          controller: _exerciseNameController,
                          nextFocusNode: _oneRmFocusNode,
                          color: Colors.white,
                        ),
                        const VSpacing.extraSmall(),
                        OneRmInput(
                          controller: _oneRmController,
                          focusNode: _oneRmFocusNode,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
