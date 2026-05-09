import 'package:flutter/material.dart';

class WeightAndAgeSection extends StatefulWidget {
  const WeightAndAgeSection({super.key});

  @override
  State<WeightAndAgeSection> createState() => _WeightAndAgeSectionState();
}

class _WeightAndAgeSectionState extends State<WeightAndAgeSection> {
  int weight = 60;
  int age = 29;
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
              color: Color(0xff17172F),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    'WEIGHT',
                    style: TextStyle(
                      color: Color(0xff878B96),
                      fontSize: 17,
                      fontWeight: .w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    weight.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: .bold,
                    ),
                  ),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    mainAxisSize: .min,
                    children: [
                      Expanded(
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          elevation: 2.0,

                          fillColor: const Color(0xFF4C4F5E),
                          padding: EdgeInsets.all(6.0),
                          shape: const CircleBorder(),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 37,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          elevation: 2.0,
                          fillColor: const Color(0xFF4C4F5E),
                          padding: EdgeInsets.all(6.0),
                          shape: const CircleBorder(),
                          child: Icon(Icons.add, color: Colors.white, size: 37),
                        ),
                      ),
                    ],
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
                children: [
                  Text(
                    'AGE',
                    style: TextStyle(
                      color: Color(0xff878B96),
                      fontSize: 17,
                      fontWeight: .w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    age.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: .bold,
                    ),
                  ),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Expanded(
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          elevation: 2.0,
                          fillColor: const Color(0xFF4C4F5E),
                          padding: EdgeInsets.all(6.0),
                          shape: const CircleBorder(),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 37,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          elevation: 2.0,
                          fillColor: const Color(0xFF4C4F5E),
                          padding: EdgeInsets.all(6.0),
                          shape: const CircleBorder(),
                          child: Icon(Icons.add, color: Colors.white, size: 37),
                        ),
                      ),
                    ],
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
