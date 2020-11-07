import 'package:contactApp/screens/add_contact.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List names = [
    'Musa Jibril',
    'Mubarak Na Mairo',
    'Usman Murtala',
    'Umar Abubakar',
    'Omale Fullstack',
    'Kiki Drake',
    'John Doe'
  ];
  List phoneNumber = [
    '09012345678',
    '09012345678',
    '09012345678',
    '09012345678',
    '09012345678',
    '09012345678',
    '09012345678',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
            subtitle: Text(phoneNumber[index]),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddContact();
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
