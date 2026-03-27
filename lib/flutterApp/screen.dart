import 'package:flutter/material.dart';
import 'CutomeStatCard.dart';
import 'Features.dart';
import 'button.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFEF7FF),
        body: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,

          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xff8160B9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      "Hello! 👋",
                      style: TextStyle(
                        color: Color(0xffFFEBFF),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Try your best to build this ui',
                    textAlign: .left,
                    style: TextStyle(
                      color: Color(0xffE9D3F7),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff673BB7),
                        borderRadius: BorderRadiusDirectional.circular(12),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Color(0xffFEEFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Text(
                "Quick Stats",
                style: TextStyle(
                  color: Color(0xff1E171F),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Cutomestatcard(
                  icon: Icons.people,
                  title: 'Users',
                  value: '1,234',
                  iconColor: Color(0xff6541AD),
                ),
                Cutomestatcard(
                  icon: Icons.star,
                  title: 'Rating',
                  value: '4.8',
                  iconColor: Color(0xffE9990E),
                ),
                Cutomestatcard(
                  icon: Icons.trending_up,
                  title: 'Success',
                  value: '98%',
                  iconColor: Color.fromARGB(255, 99, 202, 243),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Text(
                "Features",
                style: TextStyle(
                  color: Color(0xff1E171F),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 0),
            CustomFeature(
              title: 'Fast Performance',
              subTitle: 'Lightinig fast app performance',
              icon: Icons.speed,
              iconColor: Color(0xff604C7F),
            ),
            CustomFeature(
              title: 'Secure',
              subTitle: 'Your data is safe with us',
              icon: Icons.security,
              iconColor: Color(0xff2E91D4),
            ),
            CustomFeature(
              title: 'Beautiful Ui',
              subTitle: 'Modern and clean design',
              icon: Icons.palette,
              iconColor: Color(0xffF79905),
            ),
            SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Expanded(
                    child: CustomBotton(
                      text: 'Settings',
                      color: Color(0xff2196F3),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomBotton(
                      text: 'Profile',
                      color: Color(0xffFF9700),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
