import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isChecked, this.taskName, this.onChanged, this.onLongPress});

  final bool isChecked;
  final String taskName;
  final Function onChanged, onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.taskName,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: this.isChecked,
        onChanged: onChanged,
      ),
      onLongPress: onLongPress,
    );
  }
}
