import 'package:flutter/material.dart';
import 'package:power_progress/domain/core/value_objects/one_rm.dart';
import 'package:power_progress/presentation/widgets/pp_form_field.dart';

class OneRmInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;
  final Color color;

  const OneRmInput({
    Key key,
    @required this.controller,
    this.color,
    this.focusNode,
    this.nextFocusNode,
  }) : super(key: key);

  String validate(String newValue) {
    return OneRm.parse(newValue).value.fold(
          (l) => l.maybeWhen(
            empty: () => 'Cannot be empty.',
            notANumber: (failedValue) => 'The value $failedValue entered is not a number.',
            numberTooLarge: (failedValue, max) =>
                'The value $failedValue is too big. Maximum is $max',
            numberUnderZero: (failedValue) => 'The value needs to be above 0',
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
      color: color,
    );
  }
}
