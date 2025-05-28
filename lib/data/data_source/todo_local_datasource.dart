import 'package:todo/data/models/sql_todo.dart';

abstract class TodoLocalDatasource {
  // Get list of Todo
  Future<List<TodoSql>> getTodos();

  // Add new Todo
  Future<void> addTodo(TodoSql newTodo);

  // Update Todo
  Future<void> updateTodo(TodoSql todo);

  // Delete Todo
  Future<void> deleteTodo(int todoId);
}