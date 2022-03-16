import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:alewa_pay/screens/home/home.dart';
import 'package:alewa_pay/screens/transactions/transactions.dart';
import 'package:alewa_pay/screens/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Option {
  final String name;
  final Widget icon;
  final Widget activeIcon;
  final Color color;
  const Option({
    required this.activeIcon,
    required this.name,
    required this.icon,
    required this.color,
  });
}

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  final tabs = [Wallet(), Home(), Transactions()];
  static List<Option> options = [
    Option(
      name: ".",
      icon: SvgPicture.asset('assets/images/wallet.svg',
          color: Color(0xFFCBD5E0)),
      activeIcon: SvgPicture.asset('assets/images/wallet.svg',
          color: Color(0xFF243656)),
      color: Color(0xFFFDFEFF),
    ),
    Option(
        name: "",
        icon: Image.asset(
          'assets/images/cash.png',
          height: getProportionateScreenHeight(40.0),
        ),
        activeIcon: Image.asset(
          'assets/images/cash.png',
          height: getProportionateScreenHeight(40.0),
        ),
        color: Color(0xFF474592)),
    Option(
        name: ".",
        icon: SvgPicture.asset('assets/images/transactions.svg',
            color: Color(0xFFCBD5E0)),
        activeIcon: SvgPicture.asset('assets/images/transactions.svg',
            color: Color(0xFF243656)),
        color: Color(0xFFFDFEFF)),
  ];

  int _currentIndex = 1;
  Option get option => options[_currentIndex];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: option.color,
        selectedItemColor: Color(0xFF243656),
        unselectedItemColor: Colors.blueGrey[400],
        showSelectedLabels: false,
        enableFeedback: true,
        showUnselectedLabels: false,
        items: [
          for (final option in options)
            BottomNavigationBarItem(
              icon: option.icon,
              activeIcon: option.activeIcon,
              label: option.name,
            ),
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}
