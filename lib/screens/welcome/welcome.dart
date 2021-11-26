import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF434190),
      body: Stack(
        children: [
          Center(
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
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 60,
                  width: 334,
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Color(0xFF4E4C97),
                    child: Text(
                      'Continue',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(60.0),
              )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
