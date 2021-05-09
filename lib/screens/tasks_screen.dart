import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(
                left: 30.0, right: 30.0, top: 60.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list, size: 30.0),
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Todoey",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
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
              ),
              child: Text("Test!!"),
            ),
          )
        ],
      ),
    );
  }
}
