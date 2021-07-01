import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/result.dart';
import 'package:mkuat/app_state/questionaire_state.dart';
import 'package:provider/provider.dart';

class Question5 extends StatefulWidget {
  @override
  Question5State createState() {
    return new Question5State();
  }
}

class Question5State extends State<Question5> {
  // RandomForestClassifier svc;

  int radioValue = -1;
  int radioValue1 = -1;
  int radioValue2 = -1;
  int radioValue3 = -1;
  int radioValue4 = -1;
  int radioValue5 = -1;

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({18: "0"});

          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({18: "1"});
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
              .onPutAnswer({19: "0"});
          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({19: "1"});
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
              .onPutAnswer({20: "0"});
          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({20: "1"});
          break;
      }
    });
  }

  void handleRadioValueChange3(int value) {
    setState(() {
      radioValue3 = value;
      switch (radioValue3) {
        case 0:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({21: "0"});
          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({21: "1"});
          break;
      }
    });
  }

  void handleRadioValueChange4(int value) {
    setState(() {
      radioValue4 = value;
      switch (radioValue4) {
        case 0:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({22: "0"});
          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({22: "1"});
          break;
      }
    });
  }

  void handleRadioValueChange5(int value) {
    setState(() {
      radioValue5 = value;
      switch (radioValue5) {
        case 0:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({23: "0"});

          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({23: "1"});
          break;
      }
    });
  }

  @override
  // ignore: unused_element
  Widget build(BuildContext context) {
    return Consumer<QuestionaireState>(
        builder: (BuildContext context, questionState, child) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFC7E76C),
            title: Text('OTHER SYMPTONS'),
          ),
          body: SingleChildScrollView(
          
            padding: EdgeInsets.all(10.0),
            child: Column(children: <Widget>[
              //Text('Tick appropriate response'),
              Divider(),
              Text('Malaise ?'),
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
              Text('Difficult breathing ?'),
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
              Text('Swell of lymph node ?'),
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
              Text('Reduced air entry ?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                      value: 1,
                      groupValue: radioValue3,
                      onChanged: handleRadioValueChange3),
                  Text('yes'),
                  Radio(
                      value: 0,
                      groupValue: radioValue3,
                      onChanged: handleRadioValueChange3),
                  Text('No'),
                ],
              ),
              Divider(),
              Text('Increased respiratory Rate ?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                      value: 1,
                      groupValue: radioValue4,
                      onChanged: handleRadioValueChange4),
                  Text('yes'),
                  Radio(
                      value: 0,
                      groupValue: radioValue4,
                      onChanged: handleRadioValueChange4),
                  Text('No'),
                ],
              ),
              Divider(),
              Text('chest Pain ?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                      value: 1,
                      groupValue: radioValue5,
                      onChanged: handleRadioValueChange5),
                  Text('yes'),
                  Radio(
                      value: 0,
                      groupValue: radioValue5,
                      onChanged: handleRadioValueChange5),
                  Text('No'),
                ],
              ),
              Divider(),
              TextButton(
                onPressed: () async {
                  await questionState.onSubmitAnswers();
                  if (questionState.onResult) {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Result()),
                    );


                  }
                },
                child: Text(
                  questionState.isSubmit ? "Loading ....." : 'Submit',
                  style: TextStyle(color: Color(0xFFC7E76C), fontSize: 25),
                ),
              ),
            ]),
          ));
    });
  }
}
