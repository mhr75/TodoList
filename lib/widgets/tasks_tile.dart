import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String TaskTittle;
  final Function checkBoxCallBack;
  TasksTile({this.isChecked,this.TaskTittle,this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(TaskTittle,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: const Color(0xff493323),
          decoration: isChecked ? TextDecoration.lineThrough : null,),
      ),
      trailing: Checkbox(
          activeColor: const Color (0xff91684a),
          value: isChecked,
          onChanged: checkBoxCallBack),
    );
  }
}

