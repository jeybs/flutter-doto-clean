import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/locator/locator.dart';
import 'package:todo/features/todo/domain/usecases/todo_usecase.dart';
import 'package:todo/features/todo/presentation/todo_cubit.dart';
import 'package:todo/features/todo/presentation/todo_view.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(locator<TodoUsecase>()),
      child: TodoView(),
    );
  }
}
