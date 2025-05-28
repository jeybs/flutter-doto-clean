

import 'package:todo/features/todo/data/data_sources/todo_local_datasource.dart';
import 'package:todo/features/todo/data/models/todo_model.dart';
import 'package:todo/features/todo/domain/entities/todo_entity.dart';
import 'package:todo/features/todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoLocalDatasource localDataSource;

  TodoRepositoryImpl({required this.localDataSource});

  @override
  Future<void> addTodo(TodoEntity newTodo) async {
    await localDataSource.addTodo(TodoModel.fromJson(newTodo.toJson()));
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
    await localDataSource.updateTodo(TodoModel.fromJson(todo.toJson()));
  }
}
