import 'package:flutter/material.dart';
import 'package:roadmap_app/views/widgets/reoadmap_tile.dart';

class RoadmapView extends StatelessWidget {
  const RoadmapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roadmap'),
      ),
      body: Column(
        children: [
          RoadmapTile(),
        ],
      ),
    );
  }
}
