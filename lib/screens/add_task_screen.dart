import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/Task_list.dart';
import 'package:todoey_flutter/widgets/Task_tile.dart';

class AddtaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String? newsvalue;

    return Container(
      color: Color(0Xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),
          topLeft: Radius.circular(20),),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'ADD LIST',
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newvalue){
                newsvalue = newvalue;
              },
            ),
            TextButton(
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
                onPressed: (){
                },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              )

            ),
          ],
        ),
      ),
    );
  }
}
