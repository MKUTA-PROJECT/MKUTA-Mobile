import 'package:flutter/material.dart';
import 'education.dart';

class EducationInfo extends StatefulWidget {
  const EducationInfo({Key key}) : super(key: key);

  @override
  _EducationInfoState createState() => _EducationInfoState();
}

class _EducationInfoState extends State<EducationInfo> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TB info & education"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Form(
              // crossAxisAlignment: CrossAxisAlignment.start,

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'Number of client ',
                        labelText: 'Number of client ',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'Number of Male ',
                        labelText: 'Number of Male ',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'No of Male Age > 16 ',
                        labelText: 'No of Male Age > 16  ',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'No of Male Age < 16 ',
                        labelText: 'No of Male Age < 16  ',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'Number of Female ',
                        labelText: 'Number of Female ',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'No of Female Age > 16 ',
                        labelText: 'No of Female Age > 16  ',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'No of Female Age < 16 ',
                        labelText: 'No of Female Age < 16  ',
                      ),
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          "${selectedDate.toLocal()}".split(' ')[0],
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Region',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' District',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Ward',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Zone',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Street/Village',
                      ),
                    ),
                    Divider(),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Education()),
                          // );
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Save',
                          style:
                              TextStyle(color: Color(0xFFC7E76C), fontSize: 25),
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
