// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoEntity _$TodoEntityFromJson(Map<String, dynamic> json) => _TodoEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      text: json['text'] as String? ?? "",
      isCompleted: (json['isCompleted'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TodoEntityToJson(_TodoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'isCompleted': instance.isCompleted,
    };
