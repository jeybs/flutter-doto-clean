// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sql_todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoSql _$TodoSqlFromJson(Map<String, dynamic> json) => _TodoSql(
      id: (json['id'] as num?)?.toInt() ?? 0,
      text: json['text'] as String? ?? "",
      isCompleted: (json['isCompleted'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TodoSqlToJson(_TodoSql instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'isCompleted': instance.isCompleted,
    };
