import 'package:flutter/material.dart';
import 'package:todo_app/screens/home.dart';

void main() {
  runApp(const ToDo_App());
}

class ToDo_App extends StatelessWidget {
  const ToDo_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
