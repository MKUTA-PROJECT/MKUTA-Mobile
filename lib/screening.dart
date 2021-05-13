import 'package:flutter/material.dart';
import 'package:mkuat/register.dart';


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
        body: SingleChildScrollView(
            child: ListView(
              padding: EdgeInsets.zero,
              // title: Text('Screening'),
                children: <Widget>[
                  ListTile(
                    title: Text('Facility Screening'),
                    onTap: () {
                      // Update the state of the app
                      //  Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Register()),
                      // );
                    },
                  ),
                  ListTile(
                    title: Text('Community Screening'),
                    onTap: () {
                      //registration of patient goes here
                    },
                  ),
                  ListTile(
                    title: Text('Result'),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Form()),
                      // );
                    },
                  ),
                ]
                )
                )
);
  }
}