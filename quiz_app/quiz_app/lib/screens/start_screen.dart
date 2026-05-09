import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz_button.dart';
import 'package:quiz_app/widgets/start_bachground.dart';
import 'package:quiz_app/widgets/welcome_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           StartBachground(),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 74),
                    WelcomeText(),
                    Spacer(),
                    QuizButton(),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            
          
        ],
      ),
    );
  }
}
