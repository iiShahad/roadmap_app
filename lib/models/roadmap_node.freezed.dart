// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roadmap_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoadmapNode _$RoadmapNodeFromJson(Map<String, dynamic> json) {
  return _RoadmapNode.fromJson(json);
}

/// @nodoc
mixin _$RoadmapNode {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<RoadmapNode> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoadmapNodeCopyWith<RoadmapNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadmapNodeCopyWith<$Res> {
  factory $RoadmapNodeCopyWith(
          RoadmapNode value, $Res Function(RoadmapNode) then) =
      _$RoadmapNodeCopyWithImpl<$Res, RoadmapNode>;
  @useResult
  $Res call({String id, String title, List<RoadmapNode> children});
}

/// @nodoc
class _$RoadmapNodeCopyWithImpl<$Res, $Val extends RoadmapNode>
    implements $RoadmapNodeCopyWith<$Res> {
  _$RoadmapNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<RoadmapNode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoadmapNodeImplCopyWith<$Res>
    implements $RoadmapNodeCopyWith<$Res> {
  factory _$$RoadmapNodeImplCopyWith(
          _$RoadmapNodeImpl value, $Res Function(_$RoadmapNodeImpl) then) =
      __$$RoadmapNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<RoadmapNode> children});
}

/// @nodoc
class __$$RoadmapNodeImplCopyWithImpl<$Res>
    extends _$RoadmapNodeCopyWithImpl<$Res, _$RoadmapNodeImpl>
    implements _$$RoadmapNodeImplCopyWith<$Res> {
  __$$RoadmapNodeImplCopyWithImpl(
      _$RoadmapNodeImpl _value, $Res Function(_$RoadmapNodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? children = null,
  }) {
    return _then(_$RoadmapNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<RoadmapNode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoadmapNodeImpl with DiagnosticableTreeMixin implements _RoadmapNode {
  _$RoadmapNodeImpl(
      {required this.id,
      required this.title,
      final List<RoadmapNode> children = const []})
      : _children = children;

  factory _$RoadmapNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoadmapNodeImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<RoadmapNode> _children;
  @override
  @JsonKey()
  List<RoadmapNode> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoadmapNode(id: $id, title: $title, children: $children)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoadmapNode'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('children', children));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoadmapNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoadmapNodeImplCopyWith<_$RoadmapNodeImpl> get copyWith =>
      __$$RoadmapNodeImplCopyWithImpl<_$RoadmapNodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoadmapNodeImplToJson(
      this,
    );
  }
}

abstract class _RoadmapNode implements RoadmapNode {
  factory _RoadmapNode(
      {required final String id,
      required final String title,
      final List<RoadmapNode> children}) = _$RoadmapNodeImpl;

  factory _RoadmapNode.fromJson(Map<String, dynamic> json) =
      _$RoadmapNodeImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<RoadmapNode> get children;
  @override
  @JsonKey(ignore: true)
  _$$RoadmapNodeImplCopyWith<_$RoadmapNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
