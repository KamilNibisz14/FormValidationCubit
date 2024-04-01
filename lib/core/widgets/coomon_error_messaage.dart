import 'package:flutter/material.dart';

class CoomonErrorMessage extends StatelessWidget {
  const CoomonErrorMessage({required this.errorMessage, super.key});

  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage ?? ' ',
      style: const TextStyle(
        color: Colors.red
      ),
    );
  }
}