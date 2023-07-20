import 'package:flutter/material.dart';

class CustomWindows extends StatelessWidget {
  const CustomWindows({
    super.key,
    required this.child,
    this.padding = 20,
    this.color = Colors.white,
    this.appbar,
  });

  final Widget child;
  final double padding;
  final Color color;
  final PreferredSizeWidget? appbar;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar,
        backgroundColor: color,
        body: SizedBox.expand(
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: child,
          ),
        ),
      ),
    );
  }
}
