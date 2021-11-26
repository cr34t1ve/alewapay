import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class WithdrawSuccessful extends StatefulWidget {
  const WithdrawSuccessful({Key? key}) : super(key: key);

  @override
  _WithdrawSuccessfulState createState() => _WithdrawSuccessfulState();
}

class _WithdrawSuccessfulState extends State<WithdrawSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/giphy.gif',
                  height: getProportionateScreenHeight(123.0),
                  width: getProportionateScreenWidth(123.0),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your withdrawal of GHC 50.45\n was successful',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF243656)),
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SafeArea(
                    child: DefaultButton(
                        text: 'Done',
                        press: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/home', (route) => false);
                        })),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
