import 'package:flutter/material.dart';
import 'package:first_project/BMI/Calculate.dart';
class ResultContainer extends StatelessWidget {
   final double bmiResult;
  const ResultContainer({super.key,required this.bmiResult});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .all(20),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: Color(0xff17172F),
        borderRadius: .circular(10),
      ),
         child: Column(
          mainAxisAlignment: .center,
          children: [
          Center(
            child: Text(
              bmiResult.toStringAsFixed(1)
              ,
              style:const TextStyle(
                color: Colors.white,
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            Center(
            child: Text(
              CalculateButton.getResult(bmiResult),
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),],),
    );
  }
}
