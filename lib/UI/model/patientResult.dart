//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mkuat/UI/Dahboard/drawer.dart';
import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:provider/provider.dart';

class PatientResults extends StatefulWidget {
  @override
  _PatientResultsState createState() => _PatientResultsState();
}

// [
//                   TableRow(children: [
//                     Column(children: [Text('Client Name')]),
//                     Column(children: [Text('Facility')]),
//                     Column(children: [Text('Suspicion')]),
//                     Column(children: [Text('Status')]),
//                   ]),
//                   TableRow(children: [
//                     Column(children: [Text('Ali')]),
//                     Column(children: [Text('mwananamala')]),
//                     Column(children: [Text('33%')]),
//                     Column(children: [Text('negative')]),
//                   ]),
//                   TableRow(children: [
//                     Column(children: [Text('Asha')]),
//                     Column(children: [Text('mwananamala')]),
//                     Column(children: [Text('60%')]),
//                     Column(children: [Text('positive')]),
//                   ]),
//                 ]

class _PatientResultsState extends State<PatientResults> {
  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
   await Provider.of<PatientState>(context, listen: false).getPatient();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PatientState>(
        builder: (BuildContext context, patientState, child) {
      return Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(
            title: Text("Screened Clients"),
            backgroundColor: Color(0xFFC7E76C),
          ),
          body: SingleChildScrollView(
              padding: EdgeInsets.all(15.0),
              child: Container(
                  child: Column(
                    children: [
                       Table(
                      defaultColumnWidth: FixedColumnWidth(80.0),
                      border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        // width: 2
                      ),
                      children: [
                  TableRow(children: [
                    Column(children: [Text('Client Name')]),
                    Column(children: [Text('Facility')]),
                    Column(children: [Text('Suspicion')]),
                    Column(children: [Text('Status')]),
                  ]),
                ]),
                      Table(
                      defaultColumnWidth: FixedColumnWidth(80.0),
                      border: TableBorder.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        // width: 2
                      ),
                      children: patientState.patientList.map((Patient patient) {
                        return TableRow(children: [
                          Column(children: [Text(patient.first_name)]),
                          Column(children: [Text(patient.region)]),
                          Column(children: [Text(patient.street)]),
                          Column(children: [Text(patient.tb_suspect)])
                        ]);
                      }).toList())
                    ],
                  ))));
    });
  }
}
