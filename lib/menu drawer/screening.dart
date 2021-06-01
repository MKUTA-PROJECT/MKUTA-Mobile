import 'package:flutter/material.dart';
import 'package:mkuat/registration/register.dart';

import '../result.dart';
import 'community.dart';

class Screening extends StatefulWidget {
  @override
  _ScreeningState createState() => _ScreeningState();
}

class _ScreeningState extends State<Screening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("SCREENING"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: (ListView(padding: EdgeInsets.only(top: 30.0),
            // title: Text('Screening'),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Facility Screening'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
              ),
              // Divider(),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Community Screening'),
                onTap: () {
                  //registration of patient goes here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Community()),
                  );
                },
              ),
              //Divider(),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('Result'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Result()),
                  );
                },
              ),
              // Divider(),
            ])));
  }
}
