import 'package:flutter/material.dart';

class Question5 extends StatefulWidget {
  @override
  _Question5State createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  int radioValue = -1;

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
        case 3:
          break;
        case 4:
          break;
        case 5:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC7E76C),
          title: Text('OTHER SYMPTONS'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            //Text('Tick appropriate response'),
            Divider(),
            Text('Malaise ?'),
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
            Text('Difficult breathing ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 2,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('yes'),
                Radio(
                    value: 3,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('No'),
              ],
            ),
            Divider(),
            Text('Swell of lymph node ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 4,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('yes'),
                Radio(
                    value: 5,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('No'),
              ],
            ),
            Divider(),
            Text('Night sweats ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 6,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('yes'),
                Radio(
                    value: 7,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('No'),
              ],
            ),
            Divider(),
            Text('Reduced air entry ?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 8,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('yes'),
                Radio(
                    value: 9,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('No'),
              ],
            ),
            Divider(),
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //  // MaterialPageRoute(builder: (context) => Home()),
                // );
              },
              child: Text(
                'Submit',
                style: TextStyle(color: Color(0xFFC7E76C), fontSize: 25),
              ),
            ),
          ]),
        ));
  }
}
