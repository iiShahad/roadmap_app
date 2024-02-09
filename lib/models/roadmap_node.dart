class RoadmapNode {
  String id;
  String title;
  List<RoadmapNode> children = [];

  RoadmapNode({required this.id, required this.title, required this.children});
}
