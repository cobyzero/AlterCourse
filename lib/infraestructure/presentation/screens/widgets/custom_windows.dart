import 'package:flutter/material.dart';

class CustomWindows extends StatelessWidget {
  const CustomWindows({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: child,
        ),
      ),
    );
  }
}
