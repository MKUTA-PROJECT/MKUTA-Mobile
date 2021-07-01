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
          title: Text("TB info & education"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(
            child: Form(
          // crossAxisAlignment: CrossAxisAlignment.start,

          child: Column(children: <Widget>[
            Divider(),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Number of client ',
              ),
            ),
            Divider(),
            Row(
              children: [
                Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefix: Text('Number of Male'),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefix: Text('Age > 15'),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefix: Text('Age < 15'),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefix: Text('Number of Female'),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefix: Text('Age > 15'),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefix: Text('Age < 15'),
                      ),
                    ),
                  ],
                )
              ],
            ),
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
          ]),
        )));
  }
}
