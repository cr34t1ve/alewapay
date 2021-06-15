import 'package:flutter/material.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF434190),
      body: Center(
        //correct
        child: Text(
          'AlewaPay',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
            color: Colors.white,
            height: 3.6
          ),
        )
      ),
    );
  }
}