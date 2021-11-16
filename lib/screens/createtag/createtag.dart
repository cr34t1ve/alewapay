import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class CreateTag extends StatefulWidget {
  @override
  _CreateTagState createState() => _CreateTagState();
}

class _CreateTagState extends State<CreateTag> {
  TextEditingController _tagController = TextEditingController();
  String tag = 'alewapay';

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
              Row(
                children: [
                  Text(
                    'Your unique name for getting paid by anyone',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: _tagController,
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  setState(() {
                    tag = val;
                  });
                },
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                    prefixIcon: Text(
                      '\$',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF434190)),
                    ),
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 0, minHeight: 0),
                    // prefixStyle: TextStyle(
                    //     fontFamily: 'Manrope',
                    //     fontSize: 18.0,
                    //     fontWeight: FontWeight.w600,
                    //     color: Color(0xFF434190)),
                    hintText: 'Yourtag',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFCBD5E0))),
              ),
              SizedBox(
                height: getProportionateScreenHeight(25.0),
              ),
              Row(
                children: [Text('alewa.app/\$$tag')],
              ),
              SizedBox(
                height: getProportionateScreenHeight(40.0),
              ),
              Spacer(),
              SafeArea(
                child: DefaultButton(
                  text: 'Finish',
                  press: () {},
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
