import 'package:todo/domain/models/todo.dart';

abstract class TodoRepo {
  // Get list of Todo
  Future<List<Todo>> getTodos();

  // Add new Todo
  Future<void> addTodo(Todo newTodo);

  // Update Todo
  Future<void> updateTodo(Todo todo);

  // Delete Todo
  Future<void> deleteTodo(Todo todo);
}
