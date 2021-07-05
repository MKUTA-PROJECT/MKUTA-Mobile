import 'package:flutter/material.dart';
import 'package:mkuat/UI/qns/question3.dart';
import 'package:mkuat/app_state/questionaire_state.dart';
import 'package:provider/provider.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  int radioValue = -1;
  int radioValue1 = -1;

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
         Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({
                6:"0"
              });
          break;
        case 1:
        Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({
                6:"1"
              });
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
              .onPutAnswer({
                7:"0"
              });
          break;
        case 1:
        Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({
                7:"1"
              });
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC7E76C),
          title: Text('HABITS'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            //Text('Tick appropriate response'),
            Divider(),
            Text(' Smoking ?'),
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
            Text(' Substance Abuse?'),
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
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question3()),
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
