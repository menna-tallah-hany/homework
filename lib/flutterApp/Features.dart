import 'package:flutter/material.dart';

class CustomFeature extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColor;

  const CustomFeature({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: .circular(15),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        visualDensity: const VisualDensity(vertical: -4),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: .circular(10),
          ),
          child: Icon(icon, color: iconColor, size: 18),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: .bold, fontSize: 15),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(fontSize: 13, color: Color(0xffA6A6A6)),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: const Color.fromARGB(255, 151, 151, 151),
        ),
      ),
    );
  }
}
