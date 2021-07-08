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
                            Column(children: [Text('Status')]),
                            Column(children: [Text('Suspicion')]),
                            Column(children: [Text('Upload')]),
                          ]),
                        ]),
                    Table(
                        defaultColumnWidth: FixedColumnWidth(80.0),
                        border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          // width: 2
                        ),
                        children:
                            patientState.patientList.map((Patient patient) {
                          return TableRow(children: [
                            Column(children: [Text(patient.first_name),Text(patient.last_name)]),
                            Column(children: [Text(patient.tb_status)]),
                            Column(children: [Text(patient.tb_suspect)]),
                            Column(children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                //color: Color(0xFFC7E76C),
                                child: TextButton(
                                  onPressed: () {

                                    patientState.savePatient(patient);
                                     patientState.onSetTrackUpload();
                                    // Navigator.push(
                                    //                   context,
                                    //                   MaterialPageRoute(
                                    //                       builder: (context) => Referal()),
                                    //                 );
                                  },
                                  child: Center(
                                    child: patientState.trackUpload
                                        ? Text(
                                            'upload',
                                            style: TextStyle(
                                                color: Color(0xFFC7E76C),
                                                fontSize: 17.0),
                                          )
                                        
                                        : CircularProgressIndicator(),
                                  ),
                                ),
                              )
                            ])
                          ]);
                        }).toList())
                  ],
                ))));
      });
    });
  }
}
