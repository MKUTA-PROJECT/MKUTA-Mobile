import 'package:flutter/material.dart';
import 'package:mkuat/UI/qns/question2.dart';
import 'package:mkuat/app_state/questionaire_state.dart';
import 'package:provider/provider.dart';


class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int radioValue = -1;
  int radioValue1 = -1;
  int radioValue2 = -1;

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({3: "0"});
          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({3: "1"});
          break;
      }
    });
  }

  void handleRadioValueChange1(int value) {
    setState(() {
      radioValue1 = value;
      switch (radioValue1) {
        case 0:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({4: "0"});
          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({4: "1"});
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
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({5: "0"});
          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({5: "1"});
          break;
      
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC7E76C),
          title: Text('RISK FACTORS'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            Text('Tick appropriate response'),
            Divider(),
            // leading: Icon(Icons.people),
            Text(' Previous TB history?'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 1,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('yes'),
                Radio(
                    value: 0,
                    groupValue: radioValue,
                    onChanged: handleRadioValueChange),
                Text('No'),
              ],
            ),
            Divider(),
            Text(' TB contact?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 1,
                    groupValue: radioValue1,
                    onChanged: handleRadioValueChange1),
                Text('yes'),
                Radio(
                    value: 0,
                    groupValue: radioValue1,
                    onChanged: handleRadioValueChange1),
                Text('No'),
              ],
            ),
            Divider(),
            Text(' Family TB history?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 1,
                    groupValue: radioValue2,
                    onChanged: handleRadioValueChange2),
                Text('yes'),
                Radio(
                    value: 0,
                    groupValue: radioValue2,
                    onChanged: handleRadioValueChange2),
                Text('No'),
              ],
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question2()),
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
