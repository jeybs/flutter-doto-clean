import 'package:freezed_annotation/freezed_annotation.dart';

part 'sql_todo.freezed.dart';
part 'sql_todo.g.dart';

@freezed
abstract class TodoSql with _$TodoSql {
  const factory TodoSql({
    @Default(0) int? id,
    @Default("") String? text,
    @Default(0) int? isCompleted,
  }) = _TodoSql;

  factory TodoSql.fromJson(Map<String, Object?> json) =>
      _$TodoSqlFromJson(json);
}
