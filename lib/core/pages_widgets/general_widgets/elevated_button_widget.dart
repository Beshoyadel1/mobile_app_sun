import 'package:flutter/material.dart';


class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final ButtonStyle? style;
  final Widget child;

  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    this.style,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }
}

