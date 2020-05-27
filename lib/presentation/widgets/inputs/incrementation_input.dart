import 'package:flutter/material.dart';

import '../../../domain/exercise/entities/value_objects/incrementation.dart';
import '../pp_form_field.dart';

class IncrementationInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Color color;

  const IncrementationInput({
    Key key,
    @required this.controller,
    @required this.color,
    this.focusNode,
  }) : super(key: key);

  String validate(String newValue) {
    return Incrementation.parse(newValue).value.fold(
          (l) => l.maybeMap(
            empty: (f) => 'Cannot be empty.',
            notANumber: (f) => 'The value ${f.failedValue} entered is not a number.',
            numberTooLarge: (f) => 'The value ${f.failedValue} is too big. Maximum is ${f.max}.',
            numberUnderZero: (f) => 'The value needs to be above 0.',
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
