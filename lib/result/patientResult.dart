//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientResults extends StatefulWidget {
  @override
  _PatientResultsState createState() => _PatientResultsState();
}

class _PatientResultsState extends State<PatientResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
        appBar: AppBar(
          title: Text("Screened Clients"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(30.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Text('Client Name'),
                  ]),
                  Column(children: [
                    Text('Facility'),
                  ]),
                  Column(children: [
                    Text('Suspicion'),
                  ]),
                ],
              ),
            
            )
            
            )
            )
            ;
  }
}
