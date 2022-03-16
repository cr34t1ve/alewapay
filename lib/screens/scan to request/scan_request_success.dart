import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class ScanRequestSuccess extends StatefulWidget {
  const ScanRequestSuccess({Key? key}) : super(key: key);

  @override
  _ScanRequestSuccessState createState() => _ScanRequestSuccessState();
}

class _ScanRequestSuccessState extends State<ScanRequestSuccess> {
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
                      'You requested GHS 50.00\nfrom @osemuix',
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
                        context, '/navpage', (route) => false);
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
