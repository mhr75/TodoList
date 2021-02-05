import 'package:flutter/material.dart';
import 'package:todotask/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todotask/models/task_data.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7c9473),
        child: Icon(Icons.add),
        onPressed: ()
        {
          showModalBottomSheet(context: context, builder: (context)=> AddTaskScreen());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30,right:30, bottom:30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(child: Icon(Icons.list,size:35,color: const Color(0xFF493323),),
                backgroundColor: const Color(0xffffdf91),
                  radius: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('To Do!',
                style: TextStyle(
                  color: const Color(0xFF91684a),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} Tasks',
                  style: TextStyle(
                    color: const Color(0xFF91684a),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding:  const EdgeInsets.symmetric(horizontal: 20.0,),
              height: 300,
              decoration: BoxDecoration(
                color: const Color(0xffffdf91),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}



