import 'package:flutter/material.dart';

import 'eduucationInfo.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: myDrawer();
        appBar: AppBar(
          title: Text("TB Info & Education"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(30.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Text('list of Tb info '),
                  ]),
                  Column(children: [
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline_rounded),
                      color: Color(0xFFC7E76C),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EducationInfo()),
                        );
                      },
                    )
                  ]),
                ],
              ),
            )));
  }
}
