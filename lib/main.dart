import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:alewa_pay/screens/confirmpin/confirmpin.dart';
import 'package:alewa_pay/screens/createtag/createtag.dart';
import 'package:alewa_pay/screens/home/home.dart';
import 'package:alewa_pay/screens/introscreen1/introscreen1.dart';
import 'package:alewa_pay/screens/introscreen2/introscreen2.dart';
import 'package:alewa_pay/screens/introscreen3/introscreen3.dart';
import 'package:alewa_pay/screens/introscreen4/introscreen4.dart';
import 'package:alewa_pay/screens/introscreen5/introscreen5.dart';
import 'package:alewa_pay/screens/introscreen6/introscreen6.dart';
import 'package:alewa_pay/screens/invite/invite.dart';
import 'package:alewa_pay/screens/invite/invite1_5.dart';
import 'package:alewa_pay/screens/setuppin/setuppin.dart';
import 'package:alewa_pay/screens/splash/splash.dart';
import 'package:alewa_pay/screens/wallet/wallet.dart';
import 'package:alewa_pay/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MediaQ());
}

class MediaQ extends StatelessWidget {
  const MediaQ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: Wallet(),
      debugShowCheckedModeBanner: false,
    );
  }
}
