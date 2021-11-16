import 'package:alewa_pay/components/button.dart';
import 'package:alewa_pay/components/contacttile.dart';
import 'package:collection/collection.dart' show IterableExtension;
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Invite1p5 extends StatefulWidget {
  @override
  _Invite1p5State createState() => _Invite1p5State();
}

class _Invite1p5State extends State<Invite1p5> {
  bool someBool = false;
  TextEditingController searchController = TextEditingController();
  List<Contact> contacts = [];
  List<Contact> contactsFiltered = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllContacts();
    searchController.addListener(() {
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
    if (searchController.text.isNotEmpty) {
      _contacts.retainWhere((contact) {
        String searchTerm = searchController.text.toLowerCase();
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
      });
    }
  }

  getAllContacts() async {
    List<Contact> _contacts =
        (await ContactsService.getContacts(iOSLocalizedLabels: true)).toList();
    setState(() {
      contacts = _contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isSearching = searchController.text.isNotEmpty;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              'Skip',
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF555E6C)),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/image 3.png',
                          height: 64.0,
                          width: 64.0,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Invite friends and get\nGHS1.00 each',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF243656)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: searchController,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF555E6C)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name, Phone, or Email',
                        hintStyle: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF555E6C).withOpacity(0.5)),
                        prefixIcon: Text(
                          'To  ',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF555E6C)),
                        ),
                        prefixIconConstraints:
                            BoxConstraints(minWidth: 0, minHeight: 0),
                      ),
                    ),

                    // SafeArea(
                    //   child: DefaultButton(
                    //     text: 'Continue',
                    //     press: () {},
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10.0,
                    // )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 51.0,
                decoration:
                    BoxDecoration(color: Color(0xFF979797).withOpacity(0.15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21.0, bottom: 10.0),
                      child: Text(
                        'CONTACTS',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
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
                  return ContactTile(
                    title:
                        '${contact.displayName} (${contact.phones!.elementAt(0).label ?? ''})',
                    subtitle: contact.phones!.elementAt(0).value,
                  );
                },
              ))
            ],
          ),
          Positioned(
            bottom: 0.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SafeArea(
                    child: DefaultButton(
                      text: 'Continue',
                      press: () {},
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
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
