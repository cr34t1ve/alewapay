import 'package:alewa_pay/components/button.dart';
import 'package:flutter/material.dart';

class IntroScreen2 extends StatefulWidget {

  @override
  _IntroScreen2State createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  TextEditingController _otpController = TextEditingController();

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
                  'Please enter the code sent to\n0203392590',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF243656)),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              maxLength: 4,
              controller: _otpController,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF555E6C)
              ),
              decoration: InputDecoration(
                  hintText: 'Confirmation Code',
                  border: InputBorder.none,
                  counterText: '',
                  counterStyle:
                                        TextStyle(height: double.minPositive),
                  hintStyle: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFCBD5E0))),
            ),
            SizedBox(
              height: 40.0,
            ),
            Spacer(),
            SafeArea(
              child: DefaultButton(
                text: 'Next',
                press: () {},
              ),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}