import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  final _myBox = Hive.box('ravshan');

  void createInitData() {
    toDoList = [];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updataDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
