import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_model.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoCanged;
  final OnDeleteItem;
  const TodoItem({
    super.key,
    required this.todo,
    required this.onToDoCanged,
    required this.OnDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      margin: EdgeInsets.all(12),
      elevation: 2,
      child: ListTile(
        onTap: () {
          onToDoCanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: Color(0xffEFF5F3),
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Color(0xff4A5265),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        title: Text(
          todo.todoText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: .w900,
            color: const Color.fromARGB(255, 23, 9, 9),
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(
          'Created:${todo.time.toString().substring(0, 10)}',
          style: TextStyle(
            color: Color(0xffB8BEBC),
            fontSize: 12,
            fontWeight: .w600,
          ),
        ),

        trailing: IconButton(
          onPressed: () {
            OnDeleteItem(todo.id);
          },
          color: Colors.white,
          iconSize: 22,
          icon: Icon(Icons.delete_outline, color: Color(0xffD9847D)),
        ),
      ),
    );
  }
}
