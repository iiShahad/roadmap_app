import 'package:flutter/material.dart';
import 'package:roadmap_app/core/palette.dart';

class SkillTile extends StatelessWidget {
  const SkillTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Palette.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      //Content
      child: Row(
        children: [
          //CheckBox
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: Palette.onPrimaryColor,
              border: Border.fromBorderSide(
                BorderSide(
                  color: Palette.onPrimaryColor,
                  width: 2,
                ),
              ),
            ),
          ),
          //tile
          const Text(
            "data",
            style: TextStyle(
              color: Palette.onPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          //Arrow Icon
          const Icon(
            Icons.arrow_forward_ios,
            color: Palette.onPrimaryColor,
          ),
        ],
      ),
    );
  }
}
