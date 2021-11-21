import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 110,
        title: Text(
          'Transactions',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/Vectorsearch.svg',
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/carbon_user-avataravatar.svg',
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
