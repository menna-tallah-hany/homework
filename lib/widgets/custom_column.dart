import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,

        children: [
          SizedBox(height: 40),
          Center(
            child: Icon(
              Icons.task_alt,
              size: 110,
              color: Colors.teal.withOpacity(0.2),
            ),
          ),
          SizedBox(height: 25),
          Text(
            'No tasks yet',
            style: TextStyle(
              color: Color(0xff707674),
              fontSize: 20,
              fontWeight: .w600,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Add a task to get started',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: .w500,
            ),
          ),
        ],
      ),
    );
  }
}
