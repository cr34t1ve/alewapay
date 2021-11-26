import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class DepositCash2 extends StatefulWidget {
  const DepositCash2({Key? key}) : super(key: key);

  @override
  _DepositCash2State createState() => _DepositCash2State();
}

class _DepositCash2State extends State<DepositCash2> {
  String text = '3,400.00';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
        ),
        title: Text(
          'Deposit',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w500,
                      fontSize: 50,
                      color: Color(0xFF243656).withOpacity(0.3)),
                  children: <TextSpan>[
                    TextSpan(text: '₵ '),
                    TextSpan(
                      text: text == '' ? '0.00' : text,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 50,
                          color: Color(0xFF243656)),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Amount to deposit',
                  style: Theme.of(context).textTheme.bodyText2)
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(21),
            ),
            child: Row(
              children: [
                Text(
                  'ACCOUNT TO CHARGE',
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF555E6C)),
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(14.0),
          ),
          Container(
            height: getProportionateScreenHeight(199),
            width: double.infinity,
            color: Color(0xFFF2F6F8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('MTN MOBILE MONEY',
                    style: TextStyle(
                        color: Color(0xFFF2994B),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1)),
                SizedBox(
                  height: getProportionateScreenHeight(10.0),
                ),
                Text('020 339 2885',
                    style: TextStyle(
                        color: Color(0xFF555E6C),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  height: getProportionateScreenHeight(5.0),
                ),
                Text('Sebastian Livingstone',
                    style: TextStyle(
                        color: Color(0xFF243656),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Container(
            height: getProportionateScreenHeight(56.0),
            width: double.infinity,
            color: Color(0xFF243656),
            child: Center(
              child: Text(
                'Tap to link a different account',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(86.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(21.0)),
            child: DefaultButton(
              text: 'Add  GHS 3,400.78',
              press: () {
                Navigator.pushNamed(context, '/confirmdepositpin');
              },
            ),
          )
        ],
      ),
    );
  }
}
