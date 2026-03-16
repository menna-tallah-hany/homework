import 'package:flutter/material.dart';

class BoxesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: .start,
          children: [
            SizedBox(height: 27),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 13),
              height: 140,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xFFE4F2FD),
                borderRadius: BorderRadius.zero,
              ),
            ),

            SizedBox(height: 18),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 13),
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  height: 18,
                  width: 317,
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              color: Color(0xFFE2E2E2),
              thickness: 2,
              indent: 16,
              endIndent: 16,
            ),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  height: 80,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFE8F6E9),
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 1),
                            height: 36,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Color(0xFFA5D6A7),
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 6),
                            height: 36,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Color(0xFFA5D6A7),
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 6),
                  height: 80,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF2DF),
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 6),
                        height: 80,
                        width: 78,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFCC80),
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 3),
                        height: 80,
                        width: 78,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFCC80),
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 80,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5E4F6),
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFE1BEE8),
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: .spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            height: 37,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFCF93D9),
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 2),
                            height: 37,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFCF93D9),
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  height: 80,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5E4F6),
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFE1BEE8),
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 1),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5E4F6),
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  height: 60,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFB2DFDC),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  height: 60,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFF80CBC4),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 1.5),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xFFE0E0E0),
                borderRadius: BorderRadius.zero,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
