import 'package:flutter/material.dart';
import 'package:mkuat/login.dart';

import 'menu drawer/screening.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                leading: Icon(Icons.local_hospital_rounded),
                title: Text('Screening'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screening()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.collections),
                title: Text('Sputum Collection'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Contact Searching'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Defaultant'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          //title: Text("Home"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Text('WELCOME TO MKUTA'),
            //Image.asset('images/logo.jpg'),
          ),
        ));
  }
}
