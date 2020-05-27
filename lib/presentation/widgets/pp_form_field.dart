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
    Color color,
  }) : super(
          key: key,
          controller: controller,
          autocorrect: autocorrect,
          validator: validator,
          style: style != null ? style.copyWith(color: color) : TextStyle(color: color),
          obscureText: obscureText,
          textInputAction: textInputAction,
          onEditingComplete: onEditingComplete,
          focusNode: focusNode,
          keyboardType: keyboardType,
          decoration: decoration ??
              InputDecoration(
                enabledBorder: color != null
                    ? OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: BorderSide(color: color, width: 0.0),
                      )
                    : null,
                focusedBorder: color != null
                    ? OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: BorderSide(color: color, width: 0.0),
                      )
                    : null,
                border: const OutlineInputBorder(),
                labelText: labelText,
                labelStyle: color != null ? TextStyle(color: color) : null,
                prefixStyle: color != null ? TextStyle(color: color) : null,
                icon: Icon(
                  prefixIcon,
                  color: color,
                ),
                isDense: false,
                focusColor: color,
                hoverColor: color,
                fillColor: color,
              ),
        );
}
