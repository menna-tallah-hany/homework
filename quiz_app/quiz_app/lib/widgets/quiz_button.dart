import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';


class QuizButton extends StatelessWidget {
  const QuizButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QuestionsScreen()),
          );
        },
        child: Text(
          'Start Quiz',
          style: TextStyle(
            color: Color(0xff2B0063),
            fontSize: 18,
            fontWeight: .w500,
          ),
        ),
      ),
    );
  }
}
