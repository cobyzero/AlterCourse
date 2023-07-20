import 'package:alter_course/util/colors_util.dart';
import 'package:flutter/material.dart';

class RenderInput extends StatelessWidget {
  const RenderInput({
    super.key,
    required this.controller,
    required this.title,
  });

  final TextEditingController controller;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: classColor,
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
            labelText: title,
            labelStyle: const TextStyle(color: Colors.white)),
      ),
    );
  }

  getBorderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.transparent));
  }
}
