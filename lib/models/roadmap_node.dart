import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'roadmap_node.freezed.dart';
part 'roadmap_node.g.dart';

@freezed
class RoadmapNode with _$RoadmapNode {
  factory RoadmapNode({
    required String id,
    required String title,
    @Default([]) List<RoadmapNode> children,
  }) = _RoadmapNode;

  factory RoadmapNode.fromJson(Map<String, dynamic> json) =>
      _$RoadmapNodeFromJson(json);
}
