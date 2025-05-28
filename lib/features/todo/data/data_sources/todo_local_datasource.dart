import 'package:todo/features/todo/data/models/todo_model.dart';

abstract class TodoLocalDatasource {
  // Get list of Todo
  Future<List<TodoModel>> getTodos();

  // Add new Todo
  Future<void> addTodo(TodoModel newTodo);

  // Update Todo
  Future<void> updateTodo(TodoModel todo);

  // Delete Todo
  Future<void> deleteTodo(int todoId);
}