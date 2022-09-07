import 'package:flutter/widgets.dart';
import 'package:providers/Models/TaskModel.dart';

class AddItemProvider extends ChangeNotifier {
  List TaskList = [];
  addTasktoList() {
    TaskModel taskModel =
        TaskModel("Title${TaskList.length}", "Detail${TaskList.length}");
    TaskList.add(taskModel);
    notifyListeners();
  }

  removeItem(int index) {
    // TaskModel taskModel =
    //     TaskModel("Title${TaskList.length}", "Detail${TaskList.length}");

    TaskList.removeAt(index);
    notifyListeners();
  }
}
