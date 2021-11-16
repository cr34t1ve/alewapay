import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/constants.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class IntroScreen6 extends StatefulWidget {

  @override
  _IntroScreen6State createState() => _IntroScreen6State();
}

class _IntroScreen6State extends State<IntroScreen6> {
  TextEditingController _momoController = TextEditingController();

  String? _currentSelectedValue;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _currentSelectedValue = 'assets/images/Rectangle 48mtn.png';
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(104.0),
            ),
            Row(
              children: [
                Text(
                  'Link your Momo account',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15.0),
            ),
            Container(
              height: getProportionateScreenHeight(60.0),
              decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFCBD5E0),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
              child: Row(
                children: [
                  Container(
                    width: getProportionateScreenWidth(90.0),
                    height: getProportionateScreenHeight(60.0),
                    child: Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: Icon(Icons.keyboard_arrow_down_sharp),
                        value: _currentSelectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            _currentSelectedValue = newValue;
                            // state.didChange(newValue);
                          });
                        },
                        items: networks.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Image.asset(
                              value,
                             height: getProportionateScreenHeight(28.0),
                                width: getProportionateScreenWidth(28.0),
                            ),
                          );
                        }).toList(),
                        ),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    width: 1.0,
                    color: Color(0xFFCBD5E0),
                  ),
                  Container(
                     width: getProportionateScreenWidth(242.0),
                    height: getProportionateScreenHeight(60.0),
                    child: TextFormField(
                      controller: _momoController,
                      keyboardType: TextInputType.number,
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                          hintText: 'Phone number',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFCBD5E0))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(25.0),
            ),
            Row(
              children: [
                Text(
                  'Account Name',
                  style: Theme.of(context).textTheme.subtitle1
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Text(
                  'Sebastian Livingstone',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF243656)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Spacer(),
            SafeArea(
              child: Column(
                children: [
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not my account',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF555E6C)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
                  DefaultButton(
                    text: 'Next',
                    press: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}