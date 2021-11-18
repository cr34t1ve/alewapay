import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:alewa_pay/screens/confirmpin/confirmpin.dart';
import 'package:alewa_pay/screens/createtag/createtag.dart';
import 'package:alewa_pay/screens/deposit%20cash/confirm_deposit_pin.dart';
import 'package:alewa_pay/screens/deposit%20cash/deposit_cash2.dart';
import 'package:alewa_pay/screens/deposit%20cash/deposit_cash_1.dart';
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
  const MediaQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      initialRoute: '/confirmdepositpin',
      routes: {
        '/wallet': (context) => Wallet(),
        '/confirmpin': (context) => ConfirmPin(),
        '/home': (context) => Home(),
        '/welcome': (context) => Welcome(),
        '/splash': (context) => Splash(),
        '/introscreen1': (context) => IntroScreen1(),
        '/introscreen2': (context) => IntroScreen2(),
        '/introscreen3': (context) => IntroScreen3(),
        '/introscreen4': (context) => IntroScreen4(),
        '/introscreen5': (context) => IntroScreen5(),
        '/introscreen6': (context) => IntroScreen6(),
        '/createtag': (context) => CreateTag(),
        '/invite': (context) => Invite(),
        '/invite1.5': (context) => Invite1p5(),
        '/setuppin': (context) => SetupPin(),
        '/depositcash1': (context) => DepositCash1(),
        '/depositcash2': (context) => DepositCash2(),
        '/confirmdepositpin': (context) => ConfirmDepositPin()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFF7FAFC),
          fontFamily: 'Manrope',
          iconTheme: IconThemeData(
            color: Color(0xFF243656),
          ),
          appBarTheme: AppBarTheme(
              brightness: Brightness.light,
              backgroundColor: Color(0xFFF7FAFC),
              elevation: 0.0,
              titleTextStyle: TextStyle(
                  color: Color(0xFF243656),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
              iconTheme: IconThemeData(color: Color(0xFF243656))),
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 50,
                  color: Color(0xFF243656)),
              headline2: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF243656)),
              headline3: TextStyle(
                  color: Color(0xFF555E6C),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
              headline4: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF7FAFC)),
              bodyText1: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF555E6C)),
              bodyText2: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF555E6C)),
              subtitle1: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF555E6C)),
              subtitle2: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14))),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          fontFamily: 'Manrope',
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          appBarTheme: AppBarTheme(
              brightness: Brightness.dark, backgroundColor: Color(0xFF09090A)),
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 50,
                  color: Colors.white),
              headline2: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              bodyText1: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              subtitle1: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              subtitle2: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14))),
    );
  }
}
