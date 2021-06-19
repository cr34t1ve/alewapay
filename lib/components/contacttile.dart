import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Sebastian ( home)',
        style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF243656)),
      ),
      subtitle: Text(
        '020 339 2590',
        style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF555E6C)),
      ),
      trailing: Container(
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
      ),
    );
  }
}
