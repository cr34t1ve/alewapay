import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(104.0),
            ),
            Row(
              children: [
                Text(
                  'Please enter the code sent to\n0203392590',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(15.0),
            ),
            TextField(
              maxLength: 4,
              controller: _otpController,
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.bodyText1,
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
              height: getProportionateScreenHeight(40.0),
            ),
            Spacer(),
            SafeArea(
              child: DefaultButton(
                text: 'Next',
                press: () {},
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            )
          ],
        ),
      ),
    );
  }
}