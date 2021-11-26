import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class Invite extends StatefulWidget {

  @override
  _InviteState createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              'Skip',
                style: Theme.of(context).textTheme.headline3,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/image 3.png',
                  height: getProportionateScreenHeight(64.0),
                  width: getProportionateScreenWidth(64.0),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(5.0),
            ),
            Row(
              children: [
                Text(
                  'Invite friends and get\nGHS1.00 each',
                   style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            ),
            Row(
              children: [
                Text(
                  'Allow contact Access to easily\ninvite your friends',
                   style: Theme.of(context).textTheme.subtitle1,
                )
              ],
            ),
            Spacer(),
            SafeArea(
                  child: DefaultButton(
                    text: 'Continue',
                    press: () {
                  Navigator.pushNamed(context, '/invite1.5');
                },
                isActive: true,
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