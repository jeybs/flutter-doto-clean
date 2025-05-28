import 'package:todo/domain/entities/todo_entity.dart';
import 'package:todo/domain/repositories/todo_repository.dart';

class TodoUsecase {
  final TodoRepository repository;

  const TodoUsecase({required this.repository});

  Future<List<TodoEntity>> getTodos() {
    return repository.getTodos();
  }

  Future<void> insertTodo(TodoEntity todo) {
    return repository.addTodo(todo);
  }

  Future<void> deleteTodo(int todoId) {
    return repository.deleteTodo(todoId);
  }

  Future<void> toggleTodo(TodoEntity todo) {
    return repository.updateTodo(todo);
  }
}