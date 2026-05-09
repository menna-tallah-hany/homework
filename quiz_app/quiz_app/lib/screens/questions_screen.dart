import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_navigation_buttons.dart';
import 'package:quiz_app/widgets/custom_question_chip.dart';
import 'package:quiz_app/widgets/items.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B0063),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 74, width: 10),
            CustomQuestionChip(),
            Items(),
            Items(),
            Items(),
            Items(),
            Spacer(),
            CustomNavigationButtons(),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
