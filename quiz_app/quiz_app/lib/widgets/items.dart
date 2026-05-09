import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.radio_button_off_outlined,
                  color: Color(0xff2B0063),
                  size: 23,
                ),
                title: Text(
                  'Strongly Satisfied',
                  style: TextStyle(
                    color: Color(0xff2B0063),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            );
  }
}