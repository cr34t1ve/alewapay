import 'package:alewa_pay/components/button.dart';
import 'package:flutter/material.dart';

class Invite extends StatefulWidget {

  @override
  _InviteState createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              'Skip',
                style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF555E6C)),
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
                  height: 64.0,
                  width: 64.0,
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Text(
                  'Invite friends and get\nGHS1.00 each',
                   style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF243656)),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  'Allow contact Access to easily\ninvite your friends',
                   style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF555E6C)),
                )
              ],
            ),
            Spacer(),
            SafeArea(
                  child: DefaultButton(
                    text: 'Continue',
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