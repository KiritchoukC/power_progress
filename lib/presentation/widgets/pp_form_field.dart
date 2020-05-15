import 'package:flutter/material.dart';

/// TextFormField with default parameter
class PPTextFormFieldWidget extends TextFormField {
  PPTextFormFieldWidget({
    Key key,
    @required TextEditingController controller,
    bool obscureText = false,
    bool autocorrect = false,
    FormFieldValidator<String> validator,
    TextStyle style,
    InputDecoration decoration,
    String labelText,
    TextInputAction textInputAction,
    IconData prefixIcon,
    VoidCallback onEditingComplete,
    FocusNode focusNode,
    TextInputType keyboardType = TextInputType.text,
  }) : super(
          key: key,
          controller: controller,
          autocorrect: autocorrect,
          validator: validator,
          style: style,
          obscureText: obscureText,
          textInputAction: textInputAction,
          onEditingComplete: onEditingComplete,
          focusNode: focusNode,
          keyboardType: keyboardType,
          decoration: decoration ??
              InputDecoration(
                border: const OutlineInputBorder(),
                labelText: labelText,
                prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              ),
        );
}
