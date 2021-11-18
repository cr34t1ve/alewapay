import 'package:flutter/material.dart';

class DepositCash2 extends StatefulWidget {
  const DepositCash2({Key? key}) : super(key: key);

  @override
  _DepositCash2State createState() => _DepositCash2State();
}

class _DepositCash2State extends State<DepositCash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
        ),
        title: Text(
          'Deposits',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
    );
  }
}
