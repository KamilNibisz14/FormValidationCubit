import 'package:flutter/material.dart';

class CommonFormField extends StatelessWidget {
  const CommonFormField({
    required this.labelText,
    required this.onChange,
    this.errorMessage,
    this.obscureText = false,
    super.key,
  });
  final String labelText;
  final Function(String) onChange;
  final String? errorMessage;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorMessage,
      ),
    );
  }
}
