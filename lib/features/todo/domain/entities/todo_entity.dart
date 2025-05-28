import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';

part 'todo_entity.g.dart';

@freezed
abstract class TodoEntity with _$TodoEntity {
  const factory TodoEntity({
    @Default(0) int? id,
    @Default("") String? text,
    @Default(0) int? isCompleted,
  }) = _TodoEntity;

  factory TodoEntity.fromJson(Map<String, Object?> json) => _$TodoEntityFromJson(json);
}

extension ToggleCompletion on TodoEntity {
  TodoEntity toggleCompletion() {
    print(text);
    print(isCompleted);
    return TodoEntity(id: id, text: text, isCompleted: isCompleted! != 0 ? 0 : 1);
  }
}
