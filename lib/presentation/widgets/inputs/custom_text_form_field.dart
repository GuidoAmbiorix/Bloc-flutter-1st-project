import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChange;
  final String? Function(String?)? validator;

  const CustomTextFormField(
      {this.label,
      this.hint,
      this.errorMessage,
      this.onChange,
      this.validator});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(400),
    );
    return TextFormField(
      onChanged: onChange,
      validator: validator,
      decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder:
              border.copyWith(borderSide: BorderSide(color: colors.primary)),
          errorBorder: border.copyWith(
              borderSide: BorderSide(color: Colors.red.shade800)),
          focusedErrorBorder: border.copyWith(
              borderSide: BorderSide(color: Colors.red.shade800)),
          isDense: true,
          label: label != null ? Text('Cualquier cosa') : null,
          focusColor: colors.primary,
          hintText: hint,
          errorText: errorMessage,
          prefixIcon: Icon(
            Icons.supervised_user_circle_outlined,
            color: colors.primary,
          )),
    );
  }
}
