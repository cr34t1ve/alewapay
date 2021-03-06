import 'package:alewa_pay/components/numpad.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class EnterAmountSendScan extends StatefulWidget {
  const EnterAmountSendScan({Key? key}) : super(key: key);

  @override
  _EnterAmountSendScanState createState() => _EnterAmountSendScanState();
}

class _EnterAmountSendScanState extends State<EnterAmountSendScan> {
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value.trim();
      print('$value tapped');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF434190),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF434190),
        elevation: 0.0,
        title: Text(
          'Sending Cash to @osemuix',
          overflow: TextOverflow.fade,
          style: TextStyle(
              color: Color(0xFFF4F7F9),
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(50.0),
            ),
            Text(
              '₵ ${text == '' ? '0.00' : text.trim()}',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                  fontSize: getProportionateScreenWidth(50),
                  color: Colors.white),
            ),
            Text(
              'Balance: ₵345.78',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: getProportionateScreenWidth(14.0),
                  color: Color(0xFFAFB0D1)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(74.0),
            ),
            NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: Color(0xFFAFB0D1),
              rightButtonFn: () {
                setState(() {
                  text = text.substring(0, text.length - 1);
                });
              },
              rightIcon: Icon(
                Icons.backspace_outlined,
                color: Color(0xFFAFB0D1),
              ),
              leftButtonFn: () {
                print('left button clicked');
              },
              leftIcon: Icon(
                Icons.check,
                color: Colors.red,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/reasonforsend');
              },
              child: Container(
                width: double.infinity,
                height: getProportionateScreenHeight(60),
                decoration: BoxDecoration(
                  color: Color(0xFF4C4A95),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  'Send Cash',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(14.0),
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFF7FAFC)),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
