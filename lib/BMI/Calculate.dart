import 'package:first_project/BMI/BMI.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CalculateButton extends StatefulWidget {
  final double height;
  final double weight;
  const CalculateButton({
    super.key,
    required this.height,
    required this.weight,
  });
  

  static String getResult(double bmi) {
    if (bmi >= 25) return "Overweight";
    else if (bmi > 18.5) return "Normal";
    else return "Underweight";
  }


  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        double bmi = widget.weight / pow(widget.height / 100, 2);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BMI(bmiResult:
           bmi,
           ),
           ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(color: Color(0xffED0D54)),
        child: Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: .w600,
            ),
          ),
        ),
      ),
    );
  }
}
