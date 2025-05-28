import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/domain/entities/todo_entity.dart';
import 'package:todo/domain/usecases/todo_usecase.dart';

class TodoCubit extends Cubit<List<TodoEntity>> {
  final TodoUsecase todoUsecase;

  TodoCubit(this.todoUsecase) : super([]) {
    loadTodos();
  }

  // Load
  Future<void> loadTodos() async {
    final todoList = await todoUsecase.getTodos();
    emit(todoList);
  }

  // Add
  Future<void> addTodo(String text) async {
    final newTodo = TodoEntity(id: DateTime.now().millisecondsSinceEpoch, text: text);
    await todoUsecase.insertTodo(newTodo);

    loadTodos();
  }

// Delete
  Future<void> deleteTodo(TodoEntity todo) async {
    await todoUsecase.deleteTodo(todo.id!);

    loadTodos();
  }

// Toggle
  Future<void> toggleCompletion(TodoEntity todo) async {
    print("OLD: ${todo.isCompleted}");
    final updatedTodo = todo.toggleCompletion();

    await todoUsecase.toggleTodo(updatedTodo);

    loadTodos();
  }
}
