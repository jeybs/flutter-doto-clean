import 'package:todo/data/data_source/todo_local_datasource.dart';
import 'package:todo/data/models/sql_todo.dart';
import 'package:todo/domain/entities/todo_entity.dart';
import 'package:todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoLocalDatasource localDataSource;

  TodoRepositoryImpl({required this.localDataSource});

  @override
  Future<void> addTodo(TodoEntity newTodo) async {
    await localDataSource.addTodo(TodoSql.fromJson(newTodo.toJson()));
  }

  @override
  Future<void> deleteTodo(int todoId) async {
    await localDataSource.deleteTodo(todoId);
  }

  @override
  Future<List<TodoEntity>> getTodos() async {
    final todoList = await localDataSource.getTodos();
    return todoList.map((e) => TodoEntity.fromJson(e.toJson())).toList();
  }

  @override
  Future<void> updateTodo(TodoEntity todo) async {
    await localDataSource.updateTodo(TodoSql.fromJson(todo.toJson()));
  }
}
