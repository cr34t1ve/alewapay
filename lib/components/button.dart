import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  DefaultButton({Key? key, this.text, this.press, this.isActive = false})
      : super(key: key);
  final String? text;
  final Function? press;
  bool isActive;

  @override
  _DefaultButtonState createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
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
        color: widget.isActive ? Color(0xFF434190) : Color(0xFFCCCED3),
        child: Text(
          widget.text!,
          style: Theme.of(context).textTheme.headline4,
        ),
        onPressed: widget.isActive ? widget.press as void Function()? : () {},
      ),
    );
  }
}
