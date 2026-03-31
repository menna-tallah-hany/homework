import 'package:flutter/material.dart';
import 'package:first_project/BMI/Re_Calculte.dart';
import 'ResultContainer.dart';

class BMI extends StatelessWidget {
  final double bmiResult;

  BMI({super.key, required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03051A),
      appBar: AppBar(
        title: Text('BMI RESULT', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff03051A),
      ),
      body: Column(
        mainAxisAlignment: .center,
        mainAxisSize: .min,
        children: [
          Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),

          ResultContainer(bmiResult: bmiResult),

          RE_CalculateButton(height: 170, weight: 70),
        ],
      ),
    );
  }
}
