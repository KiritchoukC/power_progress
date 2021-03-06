import 'package:flutter/material.dart';

import 'package:power_progress/domain/exercise/value_objects/exercise_name.dart';
import 'package:power_progress/presentation/widgets/pp_form_field.dart';

class ExerciseNameInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode nextFocusNode;
  final Color color;

  String validate(String newValue) {
    return ExerciseName(newValue).value.fold(
          (l) => l.maybeWhen(
            empty: () => 'Cannot be empty',
            exceedingLength: (failedValue, max) => 'Exceeding length, max: $max',
            orElse: () => null,
          ),
          (_) => null,
        );
  }

  const ExerciseNameInput({
    Key key,
    @required this.controller,
    this.color,
    this.nextFocusNode,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PPTextFormFieldWidget(
      controller: controller,
      labelText: 'Exercise Name',
      color: color,
      textInputAction: TextInputAction.next,
      prefixIcon: Icons.fitness_center,
      onEditingComplete: () {
        nextFocusNode?.requestFocus();
      },
      validator: validate,
    );
  }
}
