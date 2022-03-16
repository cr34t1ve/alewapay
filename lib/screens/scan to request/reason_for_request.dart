import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:alewa_pay/screens/confirmpin/confirmpin.dart';
import 'package:flutter/material.dart';

class ReasonForRequest extends StatefulWidget {
  const ReasonForRequest({Key? key}) : super(key: key);

  @override
  _ReasonForRequestState createState() => _ReasonForRequestState();
}

class _ReasonForRequestState extends State<ReasonForRequest> {
  TextEditingController _reasonController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _reasonController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool _isSearching = _reasonController.text.isNotEmpty;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: Text(
              'Skip',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF243656)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20.0),
            ),
            Row(
              children: [
                Text(
                  'Reason for requesting\nGHS 300.78',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15.0),
            ),
            TextField(
              controller: _reasonController,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              style: Theme.of(context).textTheme.bodyText1,
              decoration: InputDecoration(
                  hintText: 'Leave a memo',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFCBD5E0))),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            Spacer(),
            SafeArea(
              child: DefaultButton(
                isActive: true,
                text: 'Next',
                press: () {
                  // Navigator.pushNamed(context, '/scanrequestpin');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ConfirmPin(nextScreen: 'scanrequestsuccess')));
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            )
          ],
        ),
      ),
    );
  }
}
