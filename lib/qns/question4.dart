import 'package:flutter/material.dart';
import 'package:mkuat/qns/question5.dart';

class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  int radioValue = -1;
  int radioValue1 = -1;
  int radioValue2 = -1;
  int radioValue3 = -1;
  int radioValue4 = -1;

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  void handleRadioValueChange1(int value) {
    setState(() {
      radioValue1 = value;
      switch (radioValue1) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  void handleRadioValueChange2(int value) {
    setState(() {
      radioValue2 = value;
      switch (radioValue2) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  void handleRadioValueChange3(int value) {
    setState(() {
      radioValue3 = value;
      switch (radioValue3) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  void handleRadioValueChange4(int value) {
    setState(() {
      radioValue4 = value;
      switch (radioValue4) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC7E76C),
          title: Text('MOST SCREENING TB SYMPTONS'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            //Text('Tick appropriate response'),
            Divider(),
            Text('Cough more than 2 weeks ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 0,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('yes'),
                Radio(
                    value: 1,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('No'),
              ],
            ),
            Divider(),
            Text('Fever for more than 7 days ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 0,
                    groupValue: radioValue1,
                    onChanged: handleRadioValueChange1),
                Text('yes'),
                Radio(
                    value: 1,
                    groupValue: radioValue1,
                    onChanged: handleRadioValueChange1),
                Text('No'),
              ],
            ),
            Divider(),
            Text('hymoptyysis ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 0,
                    groupValue: radioValue2,
                    onChanged: handleRadioValueChange2),
                Text('yes'),
                Radio(
                    value: 1,
                    groupValue: radioValue2,
                    onChanged: handleRadioValueChange2),
                Text('No'),
              ],
            ),
            Divider(),
            Text('Night sweats ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 0,
                    groupValue: radioValue3,
                    onChanged: handleRadioValueChange3),
                Text('yes'),
                Radio(
                    value: 1,
                    groupValue: radioValue3,
                    onChanged: handleRadioValueChange3),
                Text('No'),
              ],
            ),
            Divider(),
            Text('Weight loss ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 0,
                    groupValue: radioValue4,
                    onChanged: handleRadioValueChange4),
                Text('yes'),
                Radio(
                    value: 1,
                    groupValue: radioValue4,
                    onChanged: handleRadioValueChange4),
                Text('No'),
              ],
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question5()),
                );
              },
              child: Text(
                'Next',
                style: TextStyle(color: Color(0xFFC7E76C), fontSize: 25),
              ),
            ),
          ]),
        ));
  }
}
