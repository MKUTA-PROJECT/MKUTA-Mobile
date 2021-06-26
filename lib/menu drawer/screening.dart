import 'package:flutter/material.dart';
import 'package:mkuat/registration/register.dart';
import 'package:mkuat/result/result.dart';
import 'community.dart';

class Screening extends StatefulWidget {
  @override
  _ScreeningState createState() => _ScreeningState();
}

class _ScreeningState extends State<Screening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("SCREENING"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: (ListView(padding: EdgeInsets.only(top: 30.0),
            // title: Text('Screening'),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.local_hospital,  color: Color(0xFFC7E76C)),
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
                leading: Icon(Icons.local_hospital,  color: Color(0xFFC7E76C)),
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
                leading: Icon(Icons.question_answer,  color: Color(0xFFC7E76C)),
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
