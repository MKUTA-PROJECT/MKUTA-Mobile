import 'package:flutter/material.dart';
import 'education.dart';

class EducationInfo extends StatefulWidget {
  const EducationInfo({Key key}) : super(key: key);

  @override
  _EducationInfoState createState() => _EducationInfoState();
}

class _EducationInfoState extends State<EducationInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SCREENING RESULT"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Divider(),
            TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number of client ',
                ),
              ),
              Divider(),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Zone',
                ),
              ),
              Divider(),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Region',
                ),
              ),
              Divider(),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'District',
                ),
              ),
              Divider(),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ward',
                ),
              ),
              Divider(),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Street/Village',
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Education()),
                    );
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(color: Color(0xFFC7E76C), fontSize: 25),
                  ),
                ),
              ),
            ])));
  }
}
