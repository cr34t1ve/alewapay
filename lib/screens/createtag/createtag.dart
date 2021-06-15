import 'package:alewa_pay/components/button.dart';
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 104.0,
            ),
            Row(
              children: [
                Text(
                  'Link your Momo account',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF243656)),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Text(
                  'Your unique name for getting paid by anyone',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF555E6C)),
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
              style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF555E6C)
                      ),
              decoration: InputDecoration(
                prefixIcon: Text(
                  '\$',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF434190)),
                ),
                prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
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
              height: 25.0,
            ),
            Row(
              children: [Text('alewa.app/\$${tag}')],
            ),
            SizedBox(
              height: 40.0,
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
    );
  }
}
