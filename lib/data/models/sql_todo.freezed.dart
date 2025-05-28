// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sql_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoSql {
  int? get id;
  String? get text;
  int? get isCompleted;

  /// Create a copy of TodoSql
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoSqlCopyWith<TodoSql> get copyWith =>
      _$TodoSqlCopyWithImpl<TodoSql>(this as TodoSql, _$identity);

  /// Serializes this TodoSql to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoSql &&
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
    return 'TodoSql(id: $id, text: $text, isCompleted: $isCompleted)';
  }
}

/// @nodoc
abstract mixin class $TodoSqlCopyWith<$Res> {
  factory $TodoSqlCopyWith(TodoSql value, $Res Function(TodoSql) _then) =
      _$TodoSqlCopyWithImpl;
  @useResult
  $Res call({int? id, String? text, int? isCompleted});
}

/// @nodoc
class _$TodoSqlCopyWithImpl<$Res> implements $TodoSqlCopyWith<$Res> {
  _$TodoSqlCopyWithImpl(this._self, this._then);

  final TodoSql _self;
  final $Res Function(TodoSql) _then;

  /// Create a copy of TodoSql
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
class _TodoSql implements TodoSql {
  const _TodoSql({this.id = 0, this.text = "", this.isCompleted = 0});
  factory _TodoSql.fromJson(Map<String, dynamic> json) =>
      _$TodoSqlFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? text;
  @override
  @JsonKey()
  final int? isCompleted;

  /// Create a copy of TodoSql
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodoSqlCopyWith<_TodoSql> get copyWith =>
      __$TodoSqlCopyWithImpl<_TodoSql>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodoSqlToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoSql &&
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
    return 'TodoSql(id: $id, text: $text, isCompleted: $isCompleted)';
  }
}

/// @nodoc
abstract mixin class _$TodoSqlCopyWith<$Res> implements $TodoSqlCopyWith<$Res> {
  factory _$TodoSqlCopyWith(_TodoSql value, $Res Function(_TodoSql) _then) =
      __$TodoSqlCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, String? text, int? isCompleted});
}

/// @nodoc
class __$TodoSqlCopyWithImpl<$Res> implements _$TodoSqlCopyWith<$Res> {
  __$TodoSqlCopyWithImpl(this._self, this._then);

  final _TodoSql _self;
  final $Res Function(_TodoSql) _then;

  /// Create a copy of TodoSql
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_TodoSql(
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
