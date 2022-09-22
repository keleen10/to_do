import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  //first time opening the app
  void createInitialData() {
    toDoList = [
      ["Do Exercise", false],
    ];
  }

  //load the data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the db
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
