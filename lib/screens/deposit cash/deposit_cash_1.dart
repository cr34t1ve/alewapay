import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/components/numpad.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class DepositCash1 extends StatefulWidget {
  const DepositCash1({Key? key}) : super(key: key);

  @override
  _DepositCash1State createState() => _DepositCash1State();
}

class _DepositCash1State extends State<DepositCash1> {
  var text = '';
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
      print('$value tapped');
    });
  }

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
      ),
      body: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(55.0),
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
            height: getProportionateScreenHeight(70.0),
          ),
          NumericKeyboard(
            onKeyboardTap: _onKeyboardTap,
            textColor: Color(0xFF243656),
            rightButtonFn: () {
              setState(() {
                text = text.substring(0, text.length - 1);
              });
            },
            rightIcon: Icon(
              Icons.backspace_outlined,
              color: Color(0xFF243656),
            ),
            leftButtonFn: () {
              print('left button clicked');
            },
            leftIcon: Icon(
              Icons.check,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10.0),
          ),
          DefaultButton(
            text: 'Next',
            press: () {
              // navigator send amount and recipient details to page 2
              Navigator.pushNamed(context, '/depositcash2');
            },
          )
        ],
      ),
    );
  }
}
