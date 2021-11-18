import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
// set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.white,
    contentPadding: EdgeInsets.only(
        top: getProportionateScreenHeight(0.0),
        bottom: getProportionateScreenHeight(0.0)),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: getProportionateScreenHeight(60.0),
            child: Center(
              child: Text(
                "Forgot my Alewa PIN",
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434190)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Divider(),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: getProportionateScreenHeight(60.0),
            child: Center(
              child: Text(
                "Support",
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434190)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Divider(),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: getProportionateScreenHeight(60.0),
            child: Center(
              child: Text(
                "Cancel",
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF243656)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    ),
    actions: [
      // discardButton,
      // cancelButton,
    ],
  );

  showDialog(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return alert;
      });
}
