import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_todo/components/tasks_list.dart';
import 'package:note_todo/model/task_data.dart';
import 'package:provider/provider.dart';

import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Container(
                  color: Color(0xff757575),
                  child: SingleChildScrollView(
                    child: Consumer<TaskData>(
                      builder: (context, tasksList, _) => AddTaskScreen(
                        onAddTask: (taskTitle) {
                          Navigator.pop(context);
                          tasksList.addTask(taskTitle);
                          // setState(() {
                          //   tasksList.add(Task(title: taskTitle));
                          // });
                        },
                      ),
                    ),
                  ),
                );
              });
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 30.0, right: 30.0, top: 60.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list, size: 30.0),
                  radius: 30.0,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Note To Do",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
                Consumer<TaskData>(
                  builder: (context, taskData, _) => Text(
                    '${taskData.getTask.length} Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color: Colors.white),
              height: 100.0,
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
