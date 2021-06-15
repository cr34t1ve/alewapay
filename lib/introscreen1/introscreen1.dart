import 'package:flutter/material.dart';

class IntroScreen1 extends StatefulWidget {

  @override
  _IntroScreen1State createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 104.0,
            ),
            Row(
              children: [
                Text(
                  'Enter your phone number',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF243656)
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Phone',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFCBD5E0)
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}