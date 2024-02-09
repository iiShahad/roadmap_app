// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roadmap_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoadmapNodeImpl _$$RoadmapNodeImplFromJson(Map<String, dynamic> json) =>
    _$RoadmapNodeImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => RoadmapNode.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RoadmapNodeImplToJson(_$RoadmapNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'children': instance.children,
    };
