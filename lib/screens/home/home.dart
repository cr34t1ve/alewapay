import 'package:alewa_pay/components/numpad.dart';
import 'package:alewa_pay/enum/constants.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TextEditingController _cashController = TextEditingController();
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
      print('$value tapped');
    });
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   text = '0.00';
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF434190),
      appBar: AppBar(
        backgroundColor: Color(0xFF434190),
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/Vector.svg')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/carbon_user-avatar.svg')),
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            // SizedBox(
            //   height: 60.0,
            // ),
            // Container(
            //   height: 68.0,
            //   width: 160.0,
            //   alignment: Alignment.center,
            //   child: TextField(
            //     controller: _cashController,
            //     readOnly: true,
            //     textAlign: TextAlign.center,
            //     decoration: InputDecoration(
            //         contentPadding: EdgeInsets.symmetric(vertical: 5),
            //         prefixIcon: Text(
            //           '₵',
            //           style: TextStyle(
            //               fontFamily: 'Manrope',
            //               fontSize: 50.0,
            //               fontWeight: FontWeight.w500,
            //               color: Colors.white),
            //         ),
            //         prefixIconConstraints:
            //             BoxConstraints(minWidth: 0, minHeight: 0),
            //         hintText: '0.00',
            //         hintStyle: TextStyle(
            //             fontFamily: 'Manrope',
            //             fontWeight: FontWeight.w500,
            //             fontSize: 50,
            //             color: Colors.white),
            //         border: InputBorder.none),
            //   ),
            // ),
            Text(
              '₵ $text',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                  fontSize: getProportionateScreenWidth(50),
                  color: Colors.white),
            ),
            Text(
              'Balance: ₵$accountBalance',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: getProportionateScreenWidth(14.0),
                  fontWeight: FontWeight.w500,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: getProportionateScreenWidth(149.0),
                  height: getProportionateScreenHeight(48),
                  decoration: BoxDecoration(
                    color: Color(0xFF4C4A95),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                      child: Text(
                    'Request Cash',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(14.0),
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF7FAFC)),
                  )),
                ),
                Container(
                  width: getProportionateScreenWidth(149.0),
                  height: getProportionateScreenHeight(48),
                  decoration: BoxDecoration(color: Color(0xFF4C4A95)),
                  child: Center(
                      child: Text(
                    'Send Cash',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: getProportionateScreenWidth(14.0),
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF7FAFC)),
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
