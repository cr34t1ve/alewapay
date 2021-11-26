import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class IntroScreen1 extends StatefulWidget {
  @override
  _IntroScreen1State createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  TextEditingController _phoneController = TextEditingController();
  bool isTen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 104.0,
              ),
              Row(
                children: [
                  Text(
                    'Enter your phone number',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.number,
                onChanged: (val) {
                  setState(() {
                    // value checker
                    val.length == 10 ? isTen = true : false;
                    // _phoneController.text.length == 10 ? true : false;
                  });
                },
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                    hintText: 'Phone',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(18.0),
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFCBD5E0))),
              ),
              SizedBox(
                height: 40.0,
              ),
              Visibility(
                visible: isTen,
                child: Row(
                  children: [
                    Text(
                      'By entering and tapping Next, you agree to the\nTerms, E--Sign Consent & Privacy Policy',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ),
              Spacer(),
              SafeArea(
                child: DefaultButton(
                  text: 'Next',
                  press: () {
                    // if user account exists {
                    //  Navigator.pushReplacement();
                    // }
                    // else
                    Navigator.pushNamed(context, '/introscreen2');
                  },
                  isActive: true,
                ),
              ),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
