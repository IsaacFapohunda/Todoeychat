import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/Task_list.dart';
import 'package:todoey_flutter/widgets/Task_tile.dart';
import 'package:todoey_flutter/toggles/Tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/task_data.dart';



class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (content, index){
          return TaskTiles(
            name: taskData.task[index].name,
            isChecked: taskData.task[index].isdone,
            functionality: (Checkbox) {
              setState(() {
                widget.task[index].Taskdone();
              });
            },
          );
        },
          itemCount: taskData.taskcount,
        );
      },

    );
  }

  }
