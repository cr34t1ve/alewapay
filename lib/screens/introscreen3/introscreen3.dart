import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class IntroScreen3 extends StatefulWidget {

  @override
  _IntroScreen3State createState() => _IntroScreen3State();
}

class _IntroScreen3State extends State<IntroScreen3> {
  TextEditingController _nameController = TextEditingController();
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
                  'Enter your first and last name',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15.0),
            ),
            TextField(
              controller: _nameController,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              style: Theme.of(context).textTheme.bodyText1,
              decoration: InputDecoration(
                  hintText: 'Full Name',
                  border: InputBorder.none,
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