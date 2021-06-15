import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF434190),
      body: Center(
        //correct
        child: Divider()
        // SvgPicture.asset(
        //   'assets/images/AlewaPayAlewaPay.svg'
        // ),
      ),
    );
  }
}