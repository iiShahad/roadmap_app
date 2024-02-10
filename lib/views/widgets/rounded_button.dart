import 'package:flutter/material.dart';
import 'package:roadmap_app/palette.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const RoundedButton(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: Palette.primaryColor,
        foregroundColor: Palette.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        label,
        style: Palette.title2,
      ),
    );
  }
}
