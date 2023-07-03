import 'package:flutter/material.dart';

import 'task_form.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(
        builder: (BuildContext context) {
          return TaskForm();

          },
        context: context ,
      ),
      child: Icon(Icons.add),
      backgroundColor: Colors.pink,
    );
  }
}
