import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

part 'todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    @Default(0) int? id,
    @Default("") String? text,
    @Default(0) int? isCompleted,
  }) = _Todo;

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}

extension ToggleCompletion on Todo {
  Todo toggleCompletion() {
    print(text);
    return Todo(id: id, text: text, isCompleted: isCompleted! != 0 ? 0 : 1);
  }
}
