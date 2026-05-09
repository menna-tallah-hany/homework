import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final String text;
  final Color color;
  const CustomBotton({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, borderRadius: .circular(12)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
        ),
      ),
    );
  }
}
