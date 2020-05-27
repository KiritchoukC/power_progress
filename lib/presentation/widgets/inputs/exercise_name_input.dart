import 'package:flutter/material.dart';

import '../../../domain/exercise/entities/value_objects/exercise_name.dart';
import '../pp_form_field.dart';

class ExerciseNameInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode nextFocusNode;
  final Color color;

  String validate(String newValue) {
    return ExerciseName(newValue).value.fold(
          (l) => l.maybeMap(
            empty: (f) => 'Cannot be empty',
            exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
            orElse: () => null,
          ),
          (_) => null,
        );
  }

  const ExerciseNameInput({
    Key key,
    @required this.controller,
    @required this.color,
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
