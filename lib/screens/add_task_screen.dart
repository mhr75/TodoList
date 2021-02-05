import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todotask/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String newTextTittle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF6b5b3b),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: const Color(0xFF214151),
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTextTittle = newValue;
              },
            ),
            FlatButton(onPressed: (){
              Provider.of<TaskData>(context, listen: false).addTask(newTextTittle);
              Navigator.pop(context);
            },
              child: Text('Add',
              style: TextStyle(
                color: Colors.white,
              ),),
            color:  const Color(0xffffdf91),)
          ],
        ),
      ),
    );
  }
}
