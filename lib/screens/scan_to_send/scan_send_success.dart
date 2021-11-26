import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class ScanSendSuccess extends StatefulWidget {
  const ScanSendSuccess({Key? key}) : super(key: key);

  @override
  _ScanSendSuccessState createState() => _ScanSendSuccessState();
}

class _ScanSendSuccessState extends State<ScanSendSuccess> {
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
                      'GHS 300.80 sent to\n@osemuix',
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
                  },
                  isActive: true,
                )),
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
