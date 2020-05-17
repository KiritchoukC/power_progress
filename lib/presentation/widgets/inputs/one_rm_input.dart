import 'package:flutter/material.dart';
import 'package:power_progress/domain/exercise/entities/value_objects/one_rm.dart';

import '../pp_form_field.dart';

class OneRmInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;

  const OneRmInput({
    Key key,
    @required this.controller,
    this.focusNode,
    this.nextFocusNode,
  }) : super(key: key);

  String validate(String newValue) {
    return OneRm.parse(newValue).value.fold(
          (l) => l.maybeMap(
            empty: (f) => 'Cannot be empty.',
            notANumber: (f) => 'The value ${f.failedValue} entered is not a number.',
            numberTooLarge: (f) => 'The value ${f.failedValue} is too big. Maximum is ${f.max}',
            numberUnderZero: (f) => 'The value needs to be above 0',
            orElse: () => null,
          ),
          (_) => null,
        );
  }

  @override
  Widget build(BuildContext context) {
    return PPTextFormFieldWidget(
      controller: controller,
      labelText: '1RM',
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      prefixIcon: Icons.confirmation_number,
      focusNode: focusNode,
      onEditingComplete: () {
        nextFocusNode.requestFocus();
      },
      validator: validate,
    );
  }
}
