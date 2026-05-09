import 'package:flutter/material.dart';

class InitialVeiw extends StatelessWidget {
  const InitialVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(
          'there is no weather 😔 start searching now 🔍',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
