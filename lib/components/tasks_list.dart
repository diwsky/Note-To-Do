import 'package:flutter/material.dart';
import 'package:note_todo/components/task_tile.dart';
import 'package:note_todo/model/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, listTasks, _) => ListView.builder(
        itemBuilder: (context, idx) {
          return TaskTile(
            title: listTasks.getTask[idx].title,
            isChecked: listTasks.getTask[idx].isDone,
            toggleCheckBox: (newValue) {
              listTasks.updateTask(listTasks.getTask[idx]);
            },
            onLongPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Are you sure you want to delete this?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              listTasks.delete(listTasks.getTask[idx]);
                              Navigator.of(context).pop();
                            },
                            child: Text('Yes')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("No"))
                      ],
                    );
                  });
            },
          );
        },
        shrinkWrap: true,
        itemCount: listTasks.getTask.length,
      ),
    );
  }
}
