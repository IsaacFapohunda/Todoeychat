import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/Task_list.dart';
import 'package:todoey_flutter/widgets/Task_tile.dart';



class TaskTiles extends StatelessWidget {

  final bool? isChecked;
  final String? name;
  final functionality;

  TaskTiles({this.isChecked, this.name, this.functionality});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.blueAccent,
    value: isChecked,
    onChanged: functionality,
    )
    );
  }
}




