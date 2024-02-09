import 'package:flutter/material.dart';
import 'package:roadmap_app/core/palette.dart';
import 'package:roadmap_app/views/roadmap_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Palette.theme,
      home: const RoadmapView(),
    );
  }
}
