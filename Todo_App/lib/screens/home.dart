import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/widgets/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_column.dart';
import 'package:todo_app/widgets/task_input_field_section.dart';
import 'package:todo_app/widgets/todo_item.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todoList = ToDo.todoList();
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5FBF9),
      appBar: const CustomAppBar(title: 'MY Tasks'),

      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: todoList.isEmpty
                  ? const CustomColumn()
                  : ListView.builder(
                      itemCount: todoList.length,
                      itemBuilder: (context, index) => TodoItem(
                        todo: todoList[index],
                        onToDoCanged: _handleToDoChange,
                        OnDeleteItem: _deleteToDoItem,
                      ),
                    ),
            ),
          ),
          TaskInputField(
            todoController: _todoController,
            addToDoItem: _addToDoItem,
          ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String todo) {
    if (todo.isEmpty) return;
    setState(() {
      todoList.add(
        ToDo(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          time: DateTime.now(),
          todoText: todo,
        ),
      );
    });

    _todoController.clear();
  }
}
