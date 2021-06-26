import 'package:flutter/material.dart';
import 'package:mkuat/menu%20drawer/education.dart';
import 'package:mkuat/menu%20drawer/screening.dart';
import 'package:mkuat/registration/registerForm.dart';

import '../referal.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Icon(
                  Icons.person,
                  size: 100.0,
                  // color: Color(0xFFC7E76C)
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFC7E76C),
                )),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('TB info & Education'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Education()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('Active Case Finding'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screening()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_hospital_outlined),
              title: Text('Referal/Spurum Collection'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Referal()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('TB Test Result'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Contact Tracing'),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Login()),
                // );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(' Client Registration'),
        backgroundColor: Color(0xFFC7E76C),
        // centerTitle: true,
        // elevation: 0.0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: RegisterForm(),
        ),
      ),
    );
  }
}
