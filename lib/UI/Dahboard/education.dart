import 'package:flutter/material.dart';
import 'package:mkuat/UI/Dahboard/drawer.dart';
import 'eduucationInfo.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("TB Info & Education"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        // body: const SingleChildScrollView(
        //   child: Padding(
        //     padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
        //     child: EducationInfo(),
        //   ),
        // ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Text('List of My Activities'),
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
                  Container(
                    child: Table(
                        defaultColumnWidth: FixedColumnWidth(80.0),
                        border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          // width: 2
                        ),
                        children: [
                          TableRow(children: [
                            Column(children: [Text('Location')]),
                            Column(children: [Text('Date')]),
                            Column(children: [Text('No of Clients')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Temeke')]),
                            Column(children: [Text('26-06-2020')]),
                            Column(children: [Text('20')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Ubungo')]),
                            Column(children: [Text('03-09-2020')]),
                            Column(children: [Text('60')]),
                          ]),
                        ]),
                  )
                ],
              ),
            )
            )
            );
  }
}
