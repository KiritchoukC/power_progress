import 'package:flutter/material.dart';

import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/presentation/widgets/pp_form_field.dart';

class IncrementationInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Color color;

  const IncrementationInput({
    Key key,
    @required this.controller,
    this.color,
    this.focusNode,
  }) : super(key: key);

  String validate(String newValue) {
    return Incrementation.parse(newValue).value.fold(
          (l) => l.maybeWhen(
            empty: () => 'Cannot be empty.',
            notANumber: (failedValue) => 'The value $failedValue entered is not a number.',
            numberTooLarge: (failedValue, max) =>
                'The value $failedValue is too big. Maximum is $max.',
            numberUnderZero: (failedValue) => 'The value needs to be above 0.',
            orElse: () => null,
          ),
          (_) => null,
        );
  }

  @override
  Widget build(BuildContext context) {
    return PPTextFormFieldWidget(
      controller: controller,
      labelText: 'Incrementation',
      keyboardType: TextInputType.number,
      prefixIcon: Icons.shutter_speed,
      focusNode: focusNode,
      validator: validate,
      color: color,
    );
  }
}
