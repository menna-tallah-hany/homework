import 'package:flutter/material.dart';

class CustomQuestionChip extends StatelessWidget {
  const CustomQuestionChip({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xff8E84FF),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   CircularProgressIndicator(
                    value: .2,
                    strokeWidth: 5,
                   
                    backgroundColor:Color(0xffB8B2FF),
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xff2B0063),),
                   ),
                   SizedBox(width: 14),
                    Text(
                      'Questision 1',
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
                    
                    ),
                    
                  ],
                ),
              ),
            );
  }
}