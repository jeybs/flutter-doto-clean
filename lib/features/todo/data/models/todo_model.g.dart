// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => _TodoModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      text: json['text'] as String? ?? "",
      isCompleted: (json['isCompleted'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TodoModelToJson(_TodoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'isCompleted': instance.isCompleted,
    };
