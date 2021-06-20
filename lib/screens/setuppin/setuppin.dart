import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SetupPin extends StatefulWidget {
  @override
  _SetupPinState createState() => _SetupPinState();
}

class _SetupPinState extends State<SetupPin> {
  TextEditingController _setupPinController = TextEditingController();
  String currentText = '';
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
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.circle,
                // borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
              animationDuration: Duration(milliseconds: 300),
              // backgroundColor: Colors.blue.shade50,
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
            )
          ],
        ),
      ),
    );
  }
}
