import 'package:first_project/BMI/BMI.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RE_CalculateButton extends StatefulWidget {
  final double height;
  final double weight;
  const RE_CalculateButton({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  State<RE_CalculateButton> createState() => _RE_CalculateButtonState();
}

class _RE_CalculateButtonState extends State<RE_CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        double bmi = widget.weight / pow(widget.weight / 100, 2);
        Navigator.pop(
          context,
          MaterialPageRoute(builder: (context) => BMI(bmiResult: bmi)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),

        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(color: Color(0xffED0D54)),
        child: Center(
          child: Text(
            'RE_CALCUATE',
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
