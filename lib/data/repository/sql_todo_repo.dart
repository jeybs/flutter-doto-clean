import 'package:sqflite/sqflite.dart';
import 'package:todo/core/constants/database_constants.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/repository/todo_repo.dart';

class SqlTodoRepo implements TodoRepo {
  final Database db;

  const SqlTodoRepo({required this.db});

  @override
  Future<void> addTodo(Todo newTodo) async {
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
  Future<void> deleteTodo(Todo todo) async {
    int count = await db.rawDelete(
        'DELETE FROM ${DbConstants.tableTodo} WHERE ${DbConstants.todoId} = ?',
        [todo.id]);
    print("Deleted ${count}");
  }

  @override
  Future<List<Todo>> getTodos() async {
    var todosList = await db.query(DbConstants.tableTodo, orderBy: 'id');

    List<Todo> todos = todosList.isNotEmpty
        ? todosList.map((e) => Todo.fromJson(e)).toList()
        : [];

    return todos;
  }

  @override
  Future<void> updateTodo(Todo todo) async {
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
