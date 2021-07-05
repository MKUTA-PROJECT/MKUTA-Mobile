import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/referal/sputum.dart';

class SputumForm extends StatefulWidget {
  //const SputumForm({Key? key}) : super(key: key);

  @override
  _SputumFormState createState() => _SputumFormState();
}

class _SputumFormState extends State<SputumForm> {
  @override
  int radioValue = -1;

  var child;

  TextEditingController _ageController = new TextEditingController();
  TextEditingController _firstController = new TextEditingController();
  TextEditingController _genderController = new TextEditingController();
  TextEditingController _hospitalController = new TextEditingController();
  TextEditingController _dateController = new TextEditingController();

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('sputum collection Form'),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            // ignore: missing_required_param
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Patient Information'),
                  TextFormField(
                    controller: _firstController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Name: ',
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: _ageController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Age: ',
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: _genderController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Gender: ',
                    ),
                  ),
                  Divider(),
                  Text(' Hospital Info:'),
                  TextFormField(
                    controller: _hospitalController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Name: ',
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: _dateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Date ',
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('TB Results'),
                      Radio(
                          value: 1,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChange),
                      Text('Positive'),
                      Spacer(),
                      Radio(
                          value: 0,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChange),
                      Text('Negative'),
                    ],
                  ),
                  Divider(),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    // color: Color(0xFFC7E76C),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sputum()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                              color: Color(0xFFC7E76C), fontSize: 25.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
