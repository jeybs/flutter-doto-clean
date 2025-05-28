import 'package:todo/features/todo/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  // Get list of Todo
  Future<List<TodoEntity>> getTodos();

  // Add new Todo
  Future<void> addTodo(TodoEntity newTodo);

  // Update Todo
  Future<void> updateTodo(TodoEntity todo);

  // Delete Todo
  Future<void> deleteTodo(int todoId);
}
