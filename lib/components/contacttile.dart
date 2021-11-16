import 'package:flutter/material.dart';

class ContactTile extends StatefulWidget {
  ContactTile({
    Key? key,
    this.title,
    this.subtitle,
    this.trailing,
    this.stateSetter,
    // this.getCedi,
    // this.sentInvite,
  }) : super(key: key);
  final String? title;
  final String? subtitle;
  final String? trailing;
  final VoidCallback? stateSetter;

  @override
  _ContactTileState createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title!,
        style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF243656)),
      ),
      subtitle: Text(
        widget.subtitle!,
        style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF555E6C)),
      ),
      trailing: GestureDetector(
          onTap: () {
            //insert send sms function here
            setState(() {
              isSelected = true;
              print(isSelected);
              print('clicked');
            });
          },
          child: isSelected
              ? Container(
                  width: 76.0,
                  height: 28.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      border: Border.all(color: Color(0xFF434190), width: 1.0)),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: Color(0xFF434190),
                      size: 15.0,
                    ),
                  ),
                )
              : Container(
                  width: 76.0,
                  height: 28.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF434190),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  child: Center(
                    child: Text(
                      'Get ₵1',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                )),
    );
  }
}
