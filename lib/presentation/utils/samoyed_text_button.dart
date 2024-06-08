import 'package:flutter/material.dart';

class SamoyedTextButton extends StatelessWidget {
  const SamoyedTextButton(
      {super.key, required this.onPressed, required this.text});

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
