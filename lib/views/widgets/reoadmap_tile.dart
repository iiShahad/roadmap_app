import 'package:flutter/material.dart';
import 'package:roadmap_app/core/palette.dart';
import 'package:roadmap_app/views/widgets/skill_title.dart';
import 'package:timeline_tile/timeline_tile.dart';

class RoadmapTile extends StatelessWidget {
  const RoadmapTile({super.key});

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
                  "data",
                  style: Palette.title,
                ),
              ),
            ),
            _buildDivider,
            _buildDivider,
            _buildDivider,
          ],
        ),
        const Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 50),
              SkillTile(),
              SkillTile(),
              SkillTile(),
            ],
          ),
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
