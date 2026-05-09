import 'package:flutter/material.dart';

class StartBachground extends StatelessWidget {
  const StartBachground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [Color(0xff060B26), Color(0xff060B26)],
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Color(0xffB8B2FF).withOpacity(.5), Colors.transparent],
                center: Alignment(0.0, -0.1),
                radius: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
