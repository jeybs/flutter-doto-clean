import 'package:flutter/material.dart';
import 'package:todo/core/database/app_database.dart';
import 'package:todo/data/data_source/todo_local_datasource.dart';
import 'package:todo/data/data_source/todo_local_datasource_impl.dart';
import 'package:todo/domain/repositories/todo_repository.dart';
import 'package:todo/domain/usecases/todo_usecase.dart';
import 'package:todo/presentation/todo_page.dart';

import 'core/locator/locator.dart';
import 'data/repositories/todo_repository_impl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpLocator();

  final appDatabase = locator<AppDatabase>();
  await appDatabase.init();

  // Register Local Data Source
  locator.registerLazySingleton<TodoLocalDatasource>(() => TodoLocalDatasourceImpl(db: appDatabase.db));

  // Register Repository
  locator.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl(localDataSource: locator<TodoLocalDatasource>()));

  // Register UseCases
  locator.registerLazySingleton(() => TodoUsecase(repository: locator<TodoRepository>()));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    );
  }
}
