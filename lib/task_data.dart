import 'package:todoey_flutter/task_data.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/Task_list.dart';
import 'package:todoey_flutter/widgets/Task_tile.dart';
import 'package:todoey_flutter/toggles/Tasks.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier{
List<Task> task = [
  Task(name: 'buy bread'),
  Task(name: 'buy rice'),
  Task(name: 'buy bit'),
];

int get taskcount{
  return task.length;
}


}