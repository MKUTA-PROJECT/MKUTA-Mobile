import 'package:flutter/material.dart';
import 'package:mkuat/UI/registration/register.dart';
import 'community.dart';
import 'drawer.dart';

class Screening extends StatefulWidget {
  @override
  _ScreeningState createState() => _ScreeningState();
}

class _ScreeningState extends State<Screening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("SCREENING"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: (ListView(padding: EdgeInsets.only(top: 10.0),
            // title: Text('Screening'),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.local_hospital, color: Color(0xFFC7E76C)),
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
                leading: Icon(Icons.local_hospital, color: Color(0xFFC7E76C)),
                title: Text('Community Screening'),
                onTap: () {
                  //registration of patient goes here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Community()),
                  );
                },
              ),
             
            ])));
  }
}
