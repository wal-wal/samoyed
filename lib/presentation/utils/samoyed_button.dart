import 'package:flutter/material.dart';

class SamoyedButton extends StatelessWidget {
  const SamoyedButton({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        child: child,
      ),
    );
  }
}
