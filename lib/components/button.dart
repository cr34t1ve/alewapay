import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 334,
      child: FlatButton(
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        color: Color(0xFF434190),
        child: Text(
          text!,
          style: Theme.of(context).textTheme.headline4,
        ),
        onPressed: press as void Function()?,
      ),
    );
  }
}