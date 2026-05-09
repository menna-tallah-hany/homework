import 'package:flutter/material.dart';

class CustomNavigationButtons extends StatelessWidget {
  const CustomNavigationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xff2B0063),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisSize: .min,
              children: [
                Icon(Icons.chevron_left, color: Color(0xffFFFFFF), size: 25),
                SizedBox(width: 10),
                Text(
                  'Back',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: .w500,
                  ),
                ),
              ],
            ),
          ),
        ),
           SizedBox(width:  50),
        SizedBox(
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff8E84FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Row(mainAxisSize: .min,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: .w500,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.chevron_right, color: Color(0xffFFFFFF), size: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
