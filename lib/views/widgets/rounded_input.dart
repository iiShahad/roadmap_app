import 'package:flutter/material.dart';
import 'package:roadmap_app/palette.dart';

class RoundedInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const RoundedInput(
      {super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        controller: controller,
        cursorColor: Palette.primaryColor,
        style: const TextStyle(color: Palette.white),
        decoration: InputDecoration(
          fillColor: Palette.surfaceColor,
          filled: true,
          hintText: label,
          hintStyle: const TextStyle(color: Palette.darkGrey),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
