import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_flutter/models/task_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                onChanged: (value) {
                  taskName = value;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context).add(taskName);
                  Navigator.pop(context);
                },
                child: Text('Add'),
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
