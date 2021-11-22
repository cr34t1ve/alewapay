import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

class ScannedPageResult extends StatefulWidget {
  const ScannedPageResult({Key? key}) : super(key: key);

  @override
  _ScannedPageResultState createState() => _ScannedPageResultState();
}

class _ScannedPageResultState extends State<ScannedPageResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close_outlined),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(45.0),
          ),
          Container(
            height: getProportionateScreenHeight(239.0),
            width: getProportionateScreenWidth(239.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF000000).withOpacity(0.10),
                    blurRadius: 24.0,
                    spreadRadius: 0,
                    offset: Offset(0, 0))
              ],
            ),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/image 7qr.png',
                    scale: 1.0,
                    height: getProportionateScreenHeight(225.24),
                    width: getProportionateScreenWidth(225.24),
                  ),
                ),
                Center(
                  child: Container(
                    height: getProportionateScreenHeight(59.0),
                    width: getProportionateScreenWidth(59.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color(0xFFF7FAFC)),
                    child: Center(
                      child: Image.asset(
                        'assets/images/image 8alewa.png',
                        height: getProportionateScreenHeight(37.0),
                        width: getProportionateScreenWidth(37.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(50.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '@osemuix',
                style: Theme.of(context).textTheme.headline5,
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(5.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sebastian Livingstone',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF243656)),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(168.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: getProportionateScreenWidth(149.0),
                height: getProportionateScreenHeight(48),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFFAFB0D1).withOpacity(0.08)),
                child: Center(
                    child: Text(
                  'Request Cash',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: getProportionateScreenWidth(14.0),
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF434190)),
                )),
              ),
              Container(
                width: getProportionateScreenWidth(149.0),
                height: getProportionateScreenHeight(48),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFF434190)),
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
    );
  }
}
