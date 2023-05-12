import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/Task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/task_data.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}


