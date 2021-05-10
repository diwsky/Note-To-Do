import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function onAddTask;
  AddTaskScreen({@required this.onAddTask});

  @override
  Widget build(BuildContext context) {
    String taskTitle;

    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(width: 10.0, color: Colors.lightBlueAccent)),
            ),
            onChanged: (newTitle) {
              taskTitle = newTitle;
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            child: Text(
              "Add",
            ),
            style: TextButton.styleFrom(
                padding: EdgeInsets.all(10.0),
                primary: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
                onSurface: Colors.green,
                elevation: 3),
            onPressed: () {
              onAddTask(taskTitle);
            },
          )
        ],
      ),
    );
  }
}
