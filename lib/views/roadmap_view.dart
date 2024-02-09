import 'package:flutter/material.dart';
import 'package:roadmap_app/models/roadmap_node.dart';
import 'package:roadmap_app/views/widgets/reoadmap_tile.dart';

class RoadmapView extends StatelessWidget {
  const RoadmapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roadmap'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RoadmapTile(
              node: RoadmapNode(
                id: "1",
                title: "Flutter",
                children: [
                  RoadmapNode(id: "2", title: "meow"),
                  RoadmapNode(id: "3", title: "meow"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
