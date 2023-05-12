import 'package:flutter/material.dart';
import 'package:todoey_flutter/task_data.dart';
import 'package:todoey_flutter/widgets/Task_list.dart';
import 'package:todoey_flutter/widgets/Task_tile.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
import 'package:todoey_flutter/toggles/Tasks.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context) =>
                AddtaskScreen();
          },),
      body: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
            child: Icon(Icons.list, color: Colors.white,),
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskcount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            )

          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0),),
                  ),
                  child: TasksList(),

                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}



