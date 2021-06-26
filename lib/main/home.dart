import 'package:flutter/material.dart';
import 'package:mkuat/menu%20drawer/education.dart';
import 'package:mkuat/menu%20drawer/screening.dart';
import 'package:mkuat/referal.dart';
import 'package:mkuat/result/patientResult.dart';
import 'login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Education()),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.info, size: 70.0, color: Color(0xFFC7E76C)),
                      Text("TB info & Education")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screening()),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.local_hospital,
                          size: 70.0, color: Color(0xFFC7E76C)),
                      Text("Active Case Finding")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Referal()),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.local_hospital_outlined,
                          size: 70.0, color: Color(0xFFC7E76C)),
                      Text("Referal/Sputum collection")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PatientResults()),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.question_answer,
                          size: 70.0, color: Color(0xFFC7E76C)),
                      Text("TB Test Result")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => PatientResults()),
                  //   );
                  // },
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.view_list,
                          size: 70.0, color: Color(0xFFC7E76C)),
                      Text("Contact Tracing")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.logout, size: 70.0, color: Color(0xFFC7E76C)),
                      Text("Logout")
                    ],
                  ))),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
        leading: Icon(Icons.home),
        backgroundColor: Color(0xFFC7E76C),
      ),
    );
  }
}
