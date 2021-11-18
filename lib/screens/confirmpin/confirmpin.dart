import 'package:alewa_pay/components/numpad.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmPin extends StatefulWidget {
  @override
  _ConfirmPinState createState() => _ConfirmPinState();
}

class _ConfirmPinState extends State<ConfirmPin> {
  TextEditingController _confirmPinController = TextEditingController();
  String currentText = '';
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      _confirmPinController.text = _confirmPinController.text + value;
      // text = text + value;
      print('$value tapped');
      print('${_confirmPinController.text} controller');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.help_outline,
              color: Color(0xFF555E6C),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Center(
              child: Text(
                'Cancel',
                style: Theme.of(context).textTheme.headline3,
              ),
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
                Text(
                  'Confirm your Alewa PIN',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 128.0,
                  height: 18.0,
                  child: PinCodeTextField(
                    textStyle: TextStyle(fontFamily: 'Manrope', fontSize: 10.0),
                    appContext: context,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      inactiveColor: Color(0xFFCBD5E0),
                      inactiveFillColor: Color(0xFFCBD5E0),
                      selectedColor: Color(0xFFCBD5E0),
                      selectedFillColor: Color(0xFFCBD5E0),
                      shape: PinCodeFieldShape.circle,
                      fieldHeight: 16,
                      fieldWidth: 16,
                      activeFillColor: Color(0xFFCBD5E0),
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    // errorAnimationController: errorController,
                    controller: _confirmPinController,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(276.0),
            ),
            NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: Color(0xFF555E6C),
              rightButtonFn: () {
                setState(() {
                  _confirmPinController.text = _confirmPinController.text
                      .substring(0, _confirmPinController.text.length - 1);
                });
              },
              rightIcon: Icon(
                Icons.backspace_outlined,
                color: Colors.black,
              ),
              leftButtonFn: () {
                print('left button clicked');
              },
              leftIcon: Icon(
                Icons.check,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
