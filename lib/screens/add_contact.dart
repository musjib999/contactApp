import 'package:contactApp/helpers/network_helper.dart';
import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  String fname;
  String lname;
  String phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add contact'),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(15),
            height: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Text(
                    'New Contact',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    fname = value;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    lname = value;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    phone = value;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      NetworkHelper(
                              uri: 'http://192.168.43.219:3000/api/v1/contact')
                          .addContact(fname, lname, phone);
                    },
                    child: Text(
                      'Add Contact',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
