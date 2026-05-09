import 'package:flutter/material.dart';
import 'package:first_project/BMI/Calculate.dart';
import 'package:first_project/BMI/GenderSection.dart';
import 'package:first_project/BMI/Weight and Age.dart';
import 'package:first_project/BMI/HeightSection.dart';

class CardSection extends StatelessWidget {
  double height = 150;
  double weight = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff03051A),
        appBar: AppBar(
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              fontWeight: .bold,
              fontSize: 16,
            ),
          ),
          backgroundColor: Color(0xff04061D),
        ),

        body: Column(
          mainAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            Gendersection(),
            Heightsection(),
            WeightAndAgeSection(),
            CalculateButton(height: height, weight: weight),
          ],
        ),
      ),
    );
  }
}
