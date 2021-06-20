import 'package:alewa_pay/components/numpad.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SetupPin extends StatefulWidget {
  @override
  _SetupPinState createState() => _SetupPinState();
}

class _SetupPinState extends State<SetupPin> {
  TextEditingController _setupPinController = TextEditingController();
  String currentText = '';
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      _setupPinController.text = _setupPinController.text + value;
      // text = text + value;
      print('$value tapped');
      print('${_setupPinController.text} controller');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.help_outline,
              color: Color(0xFF555E6C),
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
                  'Setup your Alewa PIN',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF243656)),
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
                    controller: _setupPinController,
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
              height: 276.0,
            ),
            NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.black,
              rightButtonFn: () {
                setState(() {
                  _setupPinController.text = _setupPinController.text
                      .substring(0, _setupPinController.text.length - 1);
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
