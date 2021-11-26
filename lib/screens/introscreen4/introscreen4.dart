import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class IntroScreen4 extends StatefulWidget {
  @override
  _IntroScreen4State createState() => _IntroScreen4State();
}

class _IntroScreen4State extends State<IntroScreen4> {
  TextEditingController _emailController = TextEditingController();
  String tag = 'alewapay';

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _emailController.text = 'yourtag';
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20.0),
            ),
            Row(
              children: [
                Text(
                  'Enter your email address',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15.0),
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: Theme.of(context).textTheme.bodyText2,
              decoration: InputDecoration(
                  hintText: 'Email',
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
                press: () {
                  Navigator.pushNamed(context, '/introscreen5');
                },
                isActive: true,
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
