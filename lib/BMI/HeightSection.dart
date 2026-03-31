import 'package:flutter/material.dart';

class Heightsection extends StatefulWidget {
  const Heightsection({super.key});

  @override
  State<Heightsection> createState() => _HeightsectionState();
}

class _HeightsectionState extends State<Heightsection> {
  double height =174;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xff17172F),
        borderRadius: .circular(10),
      ),
      child: Column(
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(
              color: Color(0xff878B96),
              fontSize: 17,
              fontWeight: .w400,
            ),
          ),
          Row(
            mainAxisAlignment: .center,
            children: [
              Text(
                height.toInt().toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: .w900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'cm',
                  style: TextStyle(
                    color: Color(0xff878B96),
                    fontSize: 15,
                    fontWeight: .w500,
                  ),
                ),
              ),
            ],
          ),

          Slider(
            value: height.toDouble(),
            min: 100,
            max: 220,
            activeColor: Colors.pink,
            inactiveColor: Colors.grey,
            onChanged: (double newvalue) {
              setState(() {
                height = newvalue;
              });
            },
          ),
        ],
      ),
    );
  }
}
