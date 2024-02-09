import 'package:flutter/material.dart';
import 'package:roadmap_app/core/palette.dart';
import 'package:roadmap_app/models/roadmap_node.dart';
import 'package:roadmap_app/views/widgets/skill_tile.dart';
import 'package:timeline_tile/timeline_tile.dart';

class RoadmapTile extends StatelessWidget {
  final RoadmapNode node;
  const RoadmapTile({super.key, required this.node});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              afterLineStyle: const LineStyle(
                color: Palette.grey,
              ),
              indicatorStyle: IndicatorStyle(
                height: 50,
                width: 50,
                indicator: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.grey,
                    border: Border.all(
                      color: Palette.grey,
                      width: 5,
                    ),
                  ),
                ),
              ),
              isFirst: true,
              endChild: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  node.title,
                  style: Palette.titleB,
                ),
              ),
            ),
            for (var child in node.children) _buildDivider,
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50),
            for (var child in node.children) SkillTile(node: child),
          ],
        )
      ],
    );
  }

  Widget get _buildDivider => TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.2,
        hasIndicator: false,
        beforeLineStyle: const LineStyle(
          color: Palette.grey,
        ),
        afterLineStyle: const LineStyle(
          color: Palette.grey,
        ),
      );
}
