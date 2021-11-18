import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close_rounded),
        ),
        title: Text(
          'GHC 700.98',
          style: TextStyle(
              color: Color(0xFF243656),
              fontSize: 18.0,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Divider(),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 50),
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Text(
                  'To',
                  style: TextStyle(
                    color: Color(0xFF243656),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 25, minHeight: 0),
              hintText: 'Name, Alewatag, Phone, Email',
              hintStyle: TextStyle(
                color: Color(0xFFCBD5E0),
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 50),
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Text(
                  'For',
                  style: TextStyle(
                    color: Color(0xFF243656),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 25, minHeight: 0),
              hintText: 'Add a note',
              hintStyle: TextStyle(
                color: Color(0xFFCBD5E0),
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(15.0),
          ),
          Container(
            height: getProportionateScreenHeight(51),
            width: getProportionateScreenWidth(double.infinity),
            color: Color(0xFF979797).withOpacity(0.15),
            child: Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(21.0),
                  bottom: getProportionateScreenHeight(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('CONTACTS'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
