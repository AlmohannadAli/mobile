import 'package:flutter/material.dart';
import 'package:flutter_add_to_list/models/task.dart';
import 'package:flutter_add_to_list/providers/task_provider.dart';
import 'package:provider/provider.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({Key? key}) : super(key: key);

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final _formKey = GlobalKey<FormState>();
  final taskTitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -40.0,
            top: -40.0,
            child: CircleAvatar(
              child: Icon(Icons.close),
              backgroundColor: Colors.red,
            ),
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: taskTitle,
                      decoration: InputDecoration(hintText: "Add task title ..."),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      child:  Text('Add Task'),
                      onPressed: ()  {
                        if(_formKey.currentState!.validate()) {
                          Navigator.of(context).pop();
                          context.read<TaskProvider>().addTask(
                              Task(
                                title: taskTitle.text,
                                completed: false,
                              ));
                            }
                        },
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}

