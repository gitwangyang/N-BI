import 'package:bloc/bloc.dart';

class TodoItem {
  final String id;
  final String title;

  TodoItem(this.id, this.title);
}

class TestCubitState {
  final List<TodoItem> toDoList;

  TestCubitState(this.toDoList);
}

class TestCubit extends Cubit<TestCubitState> {
  TestCubit() : super(TestCubitState([]));

  void init() => emit(TestCubitState([TodoItem('1','title1'),TodoItem('2','title2'),TodoItem('3','title3'),TodoItem('4','title4')]));

  void addToDo(TodoItem toDoItem) {
    emit(TestCubitState([...state.toDoList, toDoItem]));
  }

  void removeToDo(TodoItem toDoItem) {
    emit(TestCubitState(state.toDoList.where((item) => item.id != toDoItem.id).toList()));
  }
}
