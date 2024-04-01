import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CommonFormField extends HookWidget {
  const CommonFormField({
    required this.labelText,
    required this.onChange,
    this.errorMessage,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    super.key,
  });

  final String labelText;
  final Function(String) onChange;
  final String? errorMessage;
  final bool obscureText;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {

    return TextField(
      onChanged: onChange,
      obscureText: obscureText,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorMessage,
      ),
    );
  }
}