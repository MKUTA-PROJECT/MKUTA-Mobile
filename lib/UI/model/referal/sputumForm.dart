import 'package:flutter/material.dart';

class SputumForm extends StatefulWidget {
  //const SputumForm({Key? key}) : super(key: key);

  @override
  _SputumFormState createState() => _SputumFormState();
}

class _SputumFormState extends State<SputumForm> {
  @override
  int radioValue = -1;

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
        ),
        body: Container(
            child: Form(
          child: Column(
            children: [
              Text('Patient INformation'),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Name: ',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Age: ',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Gender: ',
                ),
              ),
              Text(' Hspital Info:'),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Name: ',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('TB Results'),
                  Radio(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChange),
                  Text('Positive'),
                  Radio(
                      value: 0,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChange),
                  Text('Negative'),
                ],
              ),
            ],
          ),
        )));
  }
}
