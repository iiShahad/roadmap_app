import 'package:flutter/material.dart';
import 'package:roadmap_app/palette.dart';
import 'package:roadmap_app/models/roadmap_node.dart';

class SkillTile extends StatelessWidget {
  final RoadmapNode node;
  const SkillTile({super.key, required this.node});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Palette.surfaceColor,
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
                  color: Palette.darkGrey,
                  width: 2,
                ),
              ),
            ),
          ),
          //tile
          Text(node.title, style: Palette.title2),
          const Spacer(),
          //Arrow Icon
          const Icon(
            Icons.arrow_forward_ios,
            color: Palette.darkGrey,
          ),
        ],
      ),
    );
  }
}
