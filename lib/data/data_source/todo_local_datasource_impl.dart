import 'package:sqflite/sqflite.dart';
import 'package:todo/core/constants/database_constants.dart';
import 'package:todo/data/data_source/todo_local_datasource.dart';
import 'package:todo/data/models/sql_todo.dart';

class TodoLocalDatasourceImpl implements TodoLocalDatasource {
  final Database db;

  const TodoLocalDatasourceImpl({required this.db});

  @override
  Future<void> addTodo(TodoSql newTodo) async {
    try {
      await db.transaction((txn) async {
        await txn.rawInsert(
            "INSERT INTO ${DbConstants.tableTodo}(${DbConstants.todoId}, ${DbConstants.todoText}, ${DbConstants.todoIsCompleted}) VALUES('${newTodo.id}', '${newTodo.text}', '${newTodo.isCompleted!}')");
        print("Workout saved");
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> deleteTodo(int todoId) async {
    int count = await db.rawDelete(
        'DELETE FROM ${DbConstants.tableTodo} WHERE ${DbConstants.todoId} = ?',
        [todoId]);
    print("Deleted ${count}");
  }

  @override
  Future<List<TodoSql>> getTodos() async {
    var todosList = await db.query(DbConstants.tableTodo, orderBy: 'id');

    List<TodoSql> todos = todosList.isNotEmpty
        ? todosList.map((e) => TodoSql.fromJson(e)).toList()
        : [];

    return todos;
  }

  @override
  Future<void> updateTodo(TodoSql todo) async {
    await db.transaction((txn) async {
      int resp = await txn.update(
          DbConstants.tableTodo,
          {
            DbConstants.todoId: todo.id,
            DbConstants.todoText: todo.text,
            DbConstants.todoIsCompleted: todo.isCompleted
          },
          where: '${DbConstants.todoId} = ?',
          whereArgs: [todo.id]);
      print(resp);
    });
  }
  
}