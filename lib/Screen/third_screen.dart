import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:clock/TODO-list//todo_list_screen.dart';


class ThirdTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListScreen(),
    );
  }
}
