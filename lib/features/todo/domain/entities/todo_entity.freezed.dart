// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoEntity {
  int? get id;
  String? get text;
  int? get isCompleted;

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<TodoEntity> get copyWith =>
      _$TodoEntityCopyWithImpl<TodoEntity>(this as TodoEntity, _$identity);

  /// Serializes this TodoEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, isCompleted);

  @override
  String toString() {
    return 'TodoEntity(id: $id, text: $text, isCompleted: $isCompleted)';
  }
}

/// @nodoc
abstract mixin class $TodoEntityCopyWith<$Res> {
  factory $TodoEntityCopyWith(
          TodoEntity value, $Res Function(TodoEntity) _then) =
      _$TodoEntityCopyWithImpl;
  @useResult
  $Res call({int? id, String? text, int? isCompleted});
}

/// @nodoc
class _$TodoEntityCopyWithImpl<$Res> implements $TodoEntityCopyWith<$Res> {
  _$TodoEntityCopyWithImpl(this._self, this._then);

  final TodoEntity _self;
  final $Res Function(TodoEntity) _then;

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TodoEntity implements TodoEntity {
  const _TodoEntity({this.id = 0, this.text = "", this.isCompleted = 0});
  factory _TodoEntity.fromJson(Map<String, dynamic> json) =>
      _$TodoEntityFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? text;
  @override
  @JsonKey()
  final int? isCompleted;

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodoEntityCopyWith<_TodoEntity> get copyWith =>
      __$TodoEntityCopyWithImpl<_TodoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodoEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, isCompleted);

  @override
  String toString() {
    return 'TodoEntity(id: $id, text: $text, isCompleted: $isCompleted)';
  }
}

/// @nodoc
abstract mixin class _$TodoEntityCopyWith<$Res>
    implements $TodoEntityCopyWith<$Res> {
  factory _$TodoEntityCopyWith(
          _TodoEntity value, $Res Function(_TodoEntity) _then) =
      __$TodoEntityCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, String? text, int? isCompleted});
}

/// @nodoc
class __$TodoEntityCopyWithImpl<$Res> implements _$TodoEntityCopyWith<$Res> {
  __$TodoEntityCopyWithImpl(this._self, this._then);

  final _TodoEntity _self;
  final $Res Function(_TodoEntity) _then;

  /// Create a copy of TodoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_TodoEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
