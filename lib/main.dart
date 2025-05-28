import 'package:flutter/material.dart';
import 'package:todo/core/database/app_database.dart';
import 'package:todo/data/repository/sql_todo_repo.dart';
import 'package:todo/domain/repository/todo_repo.dart';
import 'package:todo/presentation/todo_page.dart';

import 'core/locator/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpLocator();

  final appDatabase = locator<AppDatabase>();
  await appDatabase.init();

  SqlTodoRepo sqlTodoRepo = SqlTodoRepo(db: appDatabase.db);

  runApp(MyApp(todoRepo: sqlTodoRepo,));
}

class MyApp extends StatelessWidget {
  // database injection through the app
  final TodoRepo todoRepo;

  const MyApp({super.key, required this.todoRepo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(todoRepo: todoRepo),
    );
  }
}
