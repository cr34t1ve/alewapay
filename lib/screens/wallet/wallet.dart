import 'package:alewa_pay/enum/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 125,
        leading: Center(
          child: Text(
            'My Wallet',
            style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF243656)),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/carbon_user-avatar.svg',
                color: Color(0xFF243656),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                        fontSize: 50,
                        color: Color(0xFF243656).withOpacity(0.3)),
                    children: <TextSpan>[
                      TextSpan(text: '₵ '),
                      TextSpan(
                        text: '$accountBalance',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w500,
                            fontSize: 50,
                            color: Color(0xFF243656)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'Your Balance',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF555E6C)),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/depositcash1');
                  },
                  child: Container(
                    width: 149.0,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEF3F6),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                        child: Text(
                      'Add Cash',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF555E6C)),
                    )),
                  ),
                ),
                // SizedBox(
                //   height: 30.0,
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/withdrawcash1');
                  },
                  child: Container(
                    width: 149.0,
                    height: 48,
                    decoration: BoxDecoration(color: Color(0xFFEEF3F6)),
                    child: Center(
                        child: Text(
                      'Withdraw',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF555E6C)),
                    )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: 336.0,
              height: 62.0,
              child: Center(
                child: ListTile(
                  trailing: Icon(
                    Icons.chevron_right_outlined,
                    color: Color(0xFFCBD5E0),
                  ),
                  title: Text(
                    'Deposit & Withdraws',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF243656)),
                  ),
                  leading: Container(
                    width: 44.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF434190),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/Vectordeposits.svg',
                        height: 15.0,
                        width: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 336.0,
              height: 62.0,
              child: Center(
                child: ListTile(
                  trailing: Icon(
                    Icons.chevron_right_outlined,
                    color: Color(0xFFCBD5E0),
                  ),
                  title: Text(
                    'Linked Accounts',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF243656)),
                  ),
                  leading: Container(
                    width: 44.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFDD755F),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/Vectorlinkedaccounts.svg',
                        height: 17.0,
                        width: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 336.0,
              height: 62.0,
              child: Center(
                child: ListTile(
                  trailing: Icon(
                    Icons.chevron_right_outlined,
                    color: Color(0xFFCBD5E0),
                  ),
                  title: Text(
                    'Buy Crypto',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF243656)),
                  ),
                  leading: Container(
                    width: 44.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF397F66),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/Vectorbuycrypto.svg',
                        height: 14.63,
                        width: 10.4,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
