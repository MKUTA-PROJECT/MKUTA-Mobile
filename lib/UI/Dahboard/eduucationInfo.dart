import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/info.dart';
import 'package:mkuat/core/service/infoService.dart';
import 'education.dart';

class EducationInfo extends StatefulWidget {
  const EducationInfo({Key key}) : super(key: key);

  @override
  _EducationInfoState createState() => _EducationInfoState();
}

class _EducationInfoState extends State<EducationInfo> {
  var selectedDate = new DateTime.now().toString().substring(0, 10);
  TextEditingController _fbController = new TextEditingController();
  TextEditingController _faController = new TextEditingController();
  TextEditingController _mbController = new TextEditingController();
  TextEditingController _maController = new TextEditingController();
  TextEditingController _zController = new TextEditingController();
  TextEditingController _rController = new TextEditingController();
  TextEditingController _dController = new TextEditingController();
  TextEditingController _sdController = new TextEditingController();
  TextEditingController _wController = new TextEditingController();
  TextEditingController _sController = new TextEditingController();

  bool _isSubmit;
  bool get isSubmit => _isSubmit ?? false;
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
                      controller: _maController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'No of Male Age > 16 ',
                        labelText: 'No of Male Age > 16  ',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      controller: _mbController,
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
                      controller: _faController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixText: 'No of Female Age > 16 ',
                        labelText: 'No of Female Age > 16  ',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      controller: _fbController,
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
                          "$selectedDate",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(),
                    TextFormField(
                      controller: _zController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Zone',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      controller: _rController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Region',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      controller: _dController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' District',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      controller: _sdController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Sub-District',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      controller: _wController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Ward',
                      ),
                    ),
                    Divider(),
                    TextFormField(
                      controller: _sController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' Street/Village',
                      ),
                    ),
                    Divider(),
                    Center(
                      child: TextButton(
                        onPressed: () async {
                          _isSubmit = true;
                          Info info = new Info(
                            female_below_15: int.parse(_fbController.text),
                            female_above_15: int.parse(_faController.text),
                            male_below_15: int.parse(_mbController.text),
                            male_above_15: int.parse(_maController.text),
                            date: selectedDate,
                            zone: _zController.text,
                            region: _rController.text,
                            district: _dController.text,
                            sub_district: _sdController.text,
                            ward: _wController.text,
                            street: _sController.text,
                          );
                          final result = await InfoService().onPostInfo(info);

                          final title =
                              result == true ? 'Done' : 'Unsuccessful';
                          final text =
                              result == true ? 'Info Posted' : 'Not Posted';
                          if (result == true) {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: Text(title),
                                      content: Text(text),
                                      actions: <Widget>[
                                        // ignore: deprecated_member_use
                                        FlatButton(
                                            child: Text('Ok'),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Education()),
                                              );
                                            })
                                      ],
                                    ));
                          } else {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: Text(title),
                                      content: Text(text),
                                      actions: <Widget>[
                                        // ignore: deprecated_member_use
                                        FlatButton(
                                            child: Text('Go Back'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            })
                                      ],
                                    ));
                          }
                          
                        },
                        child: isSubmit
                            ? CircularProgressIndicator()
                            : Text(
                                'Save',
                                style: TextStyle(
                                    color: Color(0xFFC7E76C), fontSize: 25),
                              ),
                      ),
                    ),
                  ]),
            )));
  }
}
