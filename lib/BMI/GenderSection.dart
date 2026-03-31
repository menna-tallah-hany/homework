import 'package:flutter/material.dart';

class Gendersection extends StatefulWidget {
  const Gendersection({super.key});

  @override
  State<Gendersection> createState() => _GendersectionState();
}
  enum Gender{male,female}
 
class _GendersectionState extends State<Gendersection> {
  Gender? SelectedGender;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceEvenly,
      mainAxisSize: .min,
      children: [
        Expanded(
          
          child: Container(
            margin: .all(15),
            decoration: BoxDecoration(
              color: Color(0xff090B24),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Icon(Icons.male, size: 110, color: Colors.white),
                  SizedBox(height: 5),
                  Text(
                    'MALE',
                    style: TextStyle(
                      color: Color(0xff878B96),
                      fontSize: 15,
                      fontWeight: .w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: .all(15),
            decoration: BoxDecoration(
              color: Color(0xff17172F),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: .center,
                mainAxisSize: .min,
                children: [
                  Icon(Icons.female, size: 110, color: Colors.white),
                  SizedBox(height: 5),
                  Text(
                    'FEMALE',
                    style: TextStyle(
                      color: Color(0xff878B96),
                      fontSize: 15,
                      fontWeight: .w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
