import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todo/core/constants/database_constants.dart';

class AppDatabase {
  late final Database _db;

  Future<void> init() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'app.db');

    _db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE ${DbConstants.tableTodo}(
            ${DbConstants.todoId} INTEGER PRIMARY KEY AUTOINCREMENT,
            ${DbConstants.todoText} TEXT,
            ${DbConstants.todoIsCompleted} INTEGER
          )
        ''');

        print("Database Created");
      },
    );
  }

  Database get db => _db;
}
