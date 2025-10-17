

import 'package:flutter/material.dart';
import 'package:to_do_app/modals/task.dart';
import 'package:dotted_border/dotted_border.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        itemCount: tasksList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
         itemBuilder: (context, index) => 
         (tasksList[index].isLast == true) ? _buildAddTask() : _buildTask(context, tasksList[index]),
         ),
        
      );
  }
Widget _buildAddTask(){
    return DottedBorder(
 // borderType: BorderType.RRect,
 // radius: Radius.circular(20), 
  options: RectDottedBorderOptions(
    color: Colors.grey,
    dashPattern: [10, 10],
    strokeWidth: 2,
    padding: EdgeInsets.all(16),
  ),
      child: Center(
    child: Text('+ Add Task',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
    ),
    ),
  );
}
Widget _buildTask(BuildContext context, Task task){
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: task.bgcolor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
            task.iconData,
            color: task.iconColor,
            size: 35,
          ),
        
        SizedBox(height: 30),
        Text(
          task.title!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            _buildTaskStatus(task.btncolor!, task.iconColor!, '${task.left} Left'),
            SizedBox(width: 3),
            _buildTaskStatus(Colors.white,task.iconColor!, '${task.done} Done'),
          ],
        )
      ],
    ),
  );
 }
 Widget _buildTaskStatus(Color bgcolor,Color txcolor, String text){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(text,
      style: TextStyle(
        color: txcolor,),
      ),
    );
 }
}