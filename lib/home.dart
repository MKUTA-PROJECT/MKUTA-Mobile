import 'package:flutter/material.dart';
import 'package:mkuat/login.dart';
//import 'package:mkuat/questions.dart';
import 'package:mkuat/screening.dart';

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
                child: Text('Profile'),
                decoration: BoxDecoration(
                  color: Color(0xFFC7E76C),
                ),
              ),
              ListTile(
                title: Text('Screening'),
                onTap: () {
                   Navigator.of(context)
                   .push(MaterialPageRoute(builder: (context) => Screening()));
                  Navigator.pop(context);

                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Sputum Collection'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                 // Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Contact Searching'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Defaultant'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
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
        body: SingleChildScrollView(child: Text('WELCOME TO MKUTA')));
  }
}
