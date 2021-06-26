import 'package:flutter/material.dart';

//import 'package:mkuat/register.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
       drawer: Drawer(),
        appBar: AppBar(
          title: Text("COMMUNITY SCREENING"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: (ListView(padding: EdgeInsets.only(top: 30.0),
            // title: Text('Screening'),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Door-Door'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Register()),
                  // );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Campaign'),
                onTap: () {
                  //registration of patient goes here
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Result()),
                  // );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('National Event'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Result()),
                  // );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('Special Event'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Result()),
                  // );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('AnyOther Event'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Result()),
                  // );
                },
              ),
              Divider(),
            ])));
  }
}
