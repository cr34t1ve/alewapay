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
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.white.withOpacity(0.3)),
            children: <TextSpan>[
              TextSpan(text: 'Your Balance: '),
              TextSpan(
                text: '₵345.78',
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white),
              )
            ],
          ),
        ),
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
           SizedBox(
              height: getProportionateScreenHeight(50.0),
            ),
            Text(
              '₵ ${text == '' ? '0.00' : text}',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                  fontSize: getProportionateScreenWidth(50),
                  color: Colors.white),
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
