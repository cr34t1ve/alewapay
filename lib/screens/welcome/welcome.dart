import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF434190),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/giphy.gif',
              height: 123.0,
              width: 123.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Welcome to Alewa!!',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF7FAFC)),
            )
          ],
        ),
      ),
    );
  }
}
