import 'package:flutter/material.dart';
import 'package:mkuat/UI/Dahboard/education.dart';

class EducationInfo extends StatefulWidget {
  const EducationInfo({Key key}) : super(key: key);

  @override
  _EducationInfoState createState() => _EducationInfoState();
}

class _EducationInfoState extends State<EducationInfo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Text('Number of client'),
                // labelText: 'FirstName',
              ),
            ),
            Divider(),
            Row(
              children: [
                Column(children: [
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefix: Text('Number of Male'),
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefix: Text('Age>16'),
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefix: Text('Age<16'),
                    ),
                  ),
                ]),
                Column(children: [
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefix: Text('Number of Female'),
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefix: Text('Age>16'),
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefix: Text('Age<16'),
                    ),
                  ),
                ])
              ],
            ),
            Divider(),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Text('Date'),
              ),
            ),
            Divider(),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Text('Zone'),
              ),
            ),
            Divider(),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Text('Region'),
              ),
            ),
            Divider(),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Text('District'),
              ),
            ),
            Divider(),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Text('Ward'),
              ),
            ),
            Divider(),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Text('Street/Village'),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Color(0xFFC7E76C),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  // if (_formKey.currentState.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Education()));
                  //  }
                },
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
