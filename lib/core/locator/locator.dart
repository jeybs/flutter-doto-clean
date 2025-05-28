import 'package:get_it/get_it.dart';
import 'package:todo/core/database/app_database.dart';

final locator = GetIt.instance;

void setUpLocator() {
  if (!locator.isRegistered<AppDatabase>()) {
    locator.registerLazySingleton(() => AppDatabase());
  }
}