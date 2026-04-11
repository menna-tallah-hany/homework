import 'package:flutter/material.dart';

class TaskInputField extends StatelessWidget {
  final Function(String) addToDoItem;
  final TextEditingController todoController;
  const TaskInputField({
    super.key,
    required this.addToDoItem,
    required this.todoController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20, right: 5, left: 5),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xffEEF4F2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,

                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                controller: todoController,
                decoration: InputDecoration(
                  hintText: 'Add a new task...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(bottom: 20, right: 5, left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffDDE3E1),
            ),
            child: ElevatedButton(
              onPressed: () {
                addToDoItem(todoController.text);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),

              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 25, color: Color(0XFF878B96)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
