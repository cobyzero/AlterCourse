import 'package:alter_course/infraestructure/presentation/screens/widgets/custom_windows.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomWindows(
      child: Column(children: [Text("Estas Dentro")]),
    );
  }
}
