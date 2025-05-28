// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoModel {
  int? get id;
  String? get text;
  int? get isCompleted;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<TodoModel> get copyWith =>
      _$TodoModelCopyWithImpl<TodoModel>(this as TodoModel, _$identity);

  /// Serializes this TodoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoModel &&
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
    return 'TodoModel(id: $id, text: $text, isCompleted: $isCompleted)';
  }
}

/// @nodoc
abstract mixin class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) _then) =
      _$TodoModelCopyWithImpl;
  @useResult
  $Res call({int? id, String? text, int? isCompleted});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res> implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._self, this._then);

  final TodoModel _self;
  final $Res Function(TodoModel) _then;

  /// Create a copy of TodoModel
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
class _TodoModel implements TodoModel {
  const _TodoModel({this.id = 0, this.text = "", this.isCompleted = 0});
  factory _TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? text;
  @override
  @JsonKey()
  final int? isCompleted;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodoModelCopyWith<_TodoModel> get copyWith =>
      __$TodoModelCopyWithImpl<_TodoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoModel &&
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
    return 'TodoModel(id: $id, text: $text, isCompleted: $isCompleted)';
  }
}

/// @nodoc
abstract mixin class _$TodoModelCopyWith<$Res>
    implements $TodoModelCopyWith<$Res> {
  factory _$TodoModelCopyWith(
          _TodoModel value, $Res Function(_TodoModel) _then) =
      __$TodoModelCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, String? text, int? isCompleted});
}

/// @nodoc
class __$TodoModelCopyWithImpl<$Res> implements _$TodoModelCopyWith<$Res> {
  __$TodoModelCopyWithImpl(this._self, this._then);

  final _TodoModel _self;
  final $Res Function(_TodoModel) _then;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_TodoModel(
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
