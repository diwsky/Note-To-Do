import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:note_todo/model/task.dart';

class TaskData with ChangeNotifier {
  List<Task> _listOftask = [
    Task(title: 'Dari provider 1'),
    Task(title: 'Dari provider 2'),
    Task(title: 'Dari provider 3'),
  ];

  void addTask(String newTaskTitle) {
    _listOftask.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  UnmodifiableListView<Task> get getTask {
    return UnmodifiableListView(_listOftask);
  }

  void updateTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void delete(Task task) {
    _listOftask.remove(task);
    notifyListeners();
  }
}
