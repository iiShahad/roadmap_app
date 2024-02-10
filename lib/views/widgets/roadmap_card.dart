import 'package:flutter/material.dart';
import 'package:roadmap_app/palette.dart';

class RoadmapCard extends StatelessWidget {
  const RoadmapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Palette.surfaceColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: Palette.shadow),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Roadmap Title',
                style: Palette.title2,
              ),
              const SizedBox(height: 10),
              Text('Roadmap Category', style: Palette.subtitle),
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: Palette.darkGrey)
        ],
      ),
    );
  }
}
