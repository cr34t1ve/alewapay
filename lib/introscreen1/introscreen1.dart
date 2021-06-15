import 'package:alewa_pay/components/button.dart';
import 'package:flutter/material.dart';

class IntroScreen1 extends StatefulWidget {
  @override
  _IntroScreen1State createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  TextEditingController _phoneController = TextEditingController();
  bool isTen = false;
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
                      color: Color(0xFF243656)),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.number,
              onChanged: (val) {
                setState(() {
                  val.length == 10 ? isTen = true : false;
                  // _phoneController.text.length == 10 ? true : false;
                });
              },
              decoration: InputDecoration(
                  hintText: 'Phone',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFCBD5E0))),
            ),
            SizedBox(
              height: 40.0,
            ),
            Visibility(
              visible: isTen,
              child: Row(
                children: [
                  Text(
                    'By entering and tapping Next, you agree to the\nTerms, E--Sign Consent & Privacy Policy',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF555E6C)),
                  )
                ],
              ),
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
