import 'package:flutter/material.dart';

class Cutomestatcard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String title;
  final Color iconColor;
  const Cutomestatcard({
    super.key,
    required this.icon,
    required this.value,
    required this.title,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Color.fromARGB(255, 245, 238, 238), blurRadius: 10),
        ],
      ),
      child: Column(
        mainAxisSize: .min,
        children: [
          Icon(icon, color: iconColor, size: 28),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xff1F1F1F),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}
