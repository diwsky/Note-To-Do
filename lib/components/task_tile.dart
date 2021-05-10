import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function toggleCheckBox;
  final Function onLongPressed;

  TaskTile(
      {this.title, this.isChecked, this.toggleCheckBox, this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressed,
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: isChecked, onChanged: toggleCheckBox),
    );
  }
}
