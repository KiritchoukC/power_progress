import 'package:flutter/material.dart';

import '../../../../../shared/pp_form_field.dart';
import '../../../domain/entities/value_objects/exercise_name.dart';

class ExerciseNameInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode nextFocusNode;

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

  const ExerciseNameInput({Key key, @required this.controller, this.nextFocusNode})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PPTextFormFieldWidget(
      controller: controller,
      labelText: 'Exercise Name',
      textInputAction: TextInputAction.next,
      prefixIcon: Icons.fitness_center,
      onEditingComplete: () {
        nextFocusNode?.requestFocus();
      },
      validator: validate,
    );
  }
}
