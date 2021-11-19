import 'dart:math';

import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/enum/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart' show IterableExtension;
import 'package:contacts_service/contacts_service.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  bool someBool = false;
  bool _isDone = false;
  TextEditingController _searchController = TextEditingController();
  List<Contact> contacts = [];
  List<Contact> contactsFiltered = [];

  TextStyle _style = TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.w500, color: Color(0xFF243656));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllContacts();
    _searchController.addListener(() {
      filterContacts();
    });
  }

  String flattenPhoneNumber(String phoneStr) {
    return phoneStr.replaceAllMapped(RegExp(r'^(\+)|\D'), (Match m) {
      return m[0] == '+' ? '+' : '';
    });
  }

  filterContacts() {
    List<Contact> _contacts = [];
    _contacts.addAll(contacts);
    if (_searchController.text.isNotEmpty) {
      _contacts.retainWhere((contact) {
        String searchTerm = _searchController.text.toLowerCase();
        String searchTermFlatten = flattenPhoneNumber(searchTerm);
        String contactName = contact.displayName!.toLowerCase();
        bool nameMatches = contactName.contains(searchTerm);
        if (nameMatches == true) {
          return true;
        }

        if (searchTermFlatten.isEmpty) {
          return false;
        }

        var phone = contact.phones!.firstWhereOrNull((phn) {
          String phnFlattened = flattenPhoneNumber(phn.value!);
          return phnFlattened.contains(searchTermFlatten);
        });
        return phone != null;
      });

      setState(() {
        contactsFiltered = _contacts;
        print(contactsFiltered.length);
      });
    }
  }

  getAllContacts() async {
    List<Contact> _contacts = (await ContactsService.getContacts(
            iOSLocalizedLabels: true,
            orderByGivenName: true,
            withThumbnails: false))
        .toList();
    setState(() {
      contacts = _contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isSearching = _searchController.text.isNotEmpty;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close_rounded),
        ),
        title: Text(
          'GHC 700.98',
          style: TextStyle(
              color: Color(0xFF243656),
              fontSize: 18.0,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Divider(),
              TextField(
                controller: _searchController,
                onChanged: (text) {
                  setState(() {
                    _isDone = false;
                    _style = TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF243656));
                  });
                },
                style: _style,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 50),
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Text(
                      'To',
                      style: TextStyle(
                        color: Color(0xFF243656),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 25, minHeight: 0),
                  hintText: 'Name, Alewatag, Phone, Email',
                  hintStyle: TextStyle(
                    color: Color(0xFFCBD5E0),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Divider(),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 50),
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Text(
                      'For',
                      style: TextStyle(
                        color: Color(0xFF243656),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 25, minHeight: 0),
                  hintText: 'Add a note',
                  hintStyle: TextStyle(
                    color: Color(0xFFCBD5E0),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15.0),
              ),
              Container(
                height: getProportionateScreenHeight(51),
                width: getProportionateScreenWidth(double.infinity),
                color: Color(0xFF979797).withOpacity(0.15),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(21.0),
                      bottom: getProportionateScreenHeight(10.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('CONTACTS'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: isSearching == true
                      ? contactsFiltered.length
                      : contacts.length,
                  itemBuilder: (context, index) {
                    Contact contact = isSearching == true
                        ? contactsFiltered[index]
                        : contacts[index];
                    return ListTile(
                      onTap: () {
                        setState(() {
                          _isDone = true;
                          _searchController.text = '@' + contact.displayName!;
                          _style = TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF434190));
                        });
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        child: Text(
                          contact.displayName != null
                              ? contact.displayName![0]
                              : '',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        contact.displayName ?? '',
                        style: TextStyle(
                            color: Color(0xFF243656),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      subtitle: Text(
                          '${contact.phones!.length != 0 ? contact.phones!.elementAt(0).value : ''}',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF555E6C))),
                    );
                  },
                ),
              )
            ],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultButton(
                    press: () {},
                    text: 'Send Cash',
                    isActive: _isDone,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
