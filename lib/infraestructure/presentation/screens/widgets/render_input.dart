import 'package:flutter/material.dart';

class RenderInput extends StatelessWidget {
  const RenderInput({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(border: OutlineInputBorder()),
      ),
    );
  }
}
