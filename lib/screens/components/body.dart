import 'package:flutter/material.dart';
import 'package:flutter_add_to_list/screens/components/task_list.dart';

import 'add_task_button.dart';
import 'welcome.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Welcome(name: 'BraSite', avatar: 'assets/icons/avatar.png'),
        AddTaskButton(),
        TaskList(),

      ],
    );
  }
}
