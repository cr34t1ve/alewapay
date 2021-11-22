import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCode extends StatefulWidget {
  const MyCode({Key? key}) : super(key: key);

  @override
  _MyCodeState createState() => _MyCodeState();
}

class _MyCodeState extends State<MyCode> {
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/Vectorsave.svg'))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(120.0),
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
        ],
      ),
    );
  }
}
