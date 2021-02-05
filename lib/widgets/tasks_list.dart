import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todotask/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child) {
        return ListView.builder(
          itemBuilder: (context,index)
          {
            final task = taskData.tasks[index];
            return GestureDetector(
              onLongPress: (){
                taskData.removeTask(task);

              },
              child: TasksTile(
                TaskTittle: task.name,
                isChecked: task.isDone,
                checkBoxCallBack: (bool newValue)
                {
                  taskData.updateTask(task);
                },
              ),
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}