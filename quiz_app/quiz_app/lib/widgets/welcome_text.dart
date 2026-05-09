import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(crossAxisAlignment: .start,
      children: [ Text(
                      "Good morning",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: .w400,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "New topic is waiting",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 24,
                        fontWeight: .w600,
                      ),
                    )]);
  }
}