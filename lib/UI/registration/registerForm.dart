import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/UI/qns/questions.dart';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:mkuat/app_state/questionaire_state.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate1 = DateTime.now();
  bool isDatePresent = false;
  int age;

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate1, // Refer step 1
      firstDate: DateTime(1920),
      lastDate: DateTime(2022),
    );
    if (picked != null && picked != selectedDate1) {
      age = picked.year - selectedDate.year;
      print('age is');
      print(age);
      setState(() {
        selectedDate = picked;
      });
    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int radioValue = -1;
  int radioValue1 = -1;

  var child;
  var rng = new Random();
  TextEditingController _aController = new TextEditingController();
  TextEditingController _fController = new TextEditingController();
  TextEditingController _mController = new TextEditingController();
  TextEditingController _lController = new TextEditingController();
  TextEditingController _rController = new TextEditingController();
  TextEditingController _dController = new TextEditingController();
  TextEditingController _wController = new TextEditingController();
  TextEditingController _sController = new TextEditingController();
  //TextEditingController _aController = new TextEditingController();
  TextEditingController _tController = new TextEditingController();
  TextEditingController _gController = new TextEditingController();

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          setState(() {
            _gController.text = "F";
          });
          break;
        case 1:
          setState(() {
            _gController.text = "M";
          });
          //  Provider.of<QuestionaireState>(context, listen: false)
          //       .onPutAnswer({1:"1"});
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
              .onPutAnswer({2: "0"});
          break;
        case 1:
          Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({2: "1"});
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PatientState>(
        builder: (BuildContext context, patientState, child) {
      return Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _fController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'FirstName',
                  ),
                  // validator: (String value) {
                  //   if (value.trim().isEmpty) {
                  //     return 'name is required';
                  //   }
                  // },
                ),
                const SizedBox(height: 16.0),
                Divider(),
                TextFormField(
                  controller: _mController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'MiddleName',
                  ),
                  // ignore: missing_return
                  // validator: (value) {
                  // if (value.trim().isEmpty) {
                  // return 'Full name is required';
                  // }
                  // },
                ),
                Divider(),
                TextFormField(
                  controller: _lController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'LastName',
                  ),
                  // validator: (String value) {
                  // if (value.trim().isEmpty) {
                  // return 'Full name is required';
                  // }
                  // },
                ),
                Divider(),
                TextFormField(
                  controller: _rController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Region',
                  ),
                  // validator: (String value) {
                  // if (value.trim().isEmpty) {
                  // return 'Full name is required';
                  // }
                  // },
                ),
                Divider(),
                TextFormField(
                  controller: _dController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'District',
                  ),
                  // validator: (String value) {
                  // if (value.trim().isEmpty) {
                  // return 'Full name is required';
                  // }
                  // },
                ),
                Divider(),
                TextFormField(
                  controller: _wController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ward',
                  ),
                  // validator: (String value) {
                  // if (value.trim().isEmpty) {
                  // return 'Full name is required';
                  // }
                  // },
                ),
                Divider(),
                TextFormField(
                  controller: _sController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Street',
                  ),
                  // validator: (String value) {
                  // if (value.trim().isEmpty) {
                  // return 'Full name is required';
                  // }
                  // },
                ),
                Divider(),
                TextFormField(
                  controller: _tController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Telephone',
                  ),
                  // validator: (String value) {
                  // if (value.trim().isEmpty) {
                  // return 'Full name is required';
                  // }
                  // },
                ),
                Divider(),
                Text('Gender'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 0,
                      groupValue: radioValue,
                      onChanged: handleRadioValueChange,
                      // fillColor: Colors.(0xFFC7E76C),
                    ),
                    Text('Female'),
                    Radio(
                        value: 1,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChange),
                    Text('Male'),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () => _selectDate(context), // Refer step 3
                          child: Text(
                            'Select date',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          // color: Colors.greenAccent,
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "${selectedDate.toLocal()}".split(' ')[0],
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                // Text('Age'),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Radio(
                //       value: 0,
                //       groupValue: radioValue1,
                //       onChanged: handleRadioValueChange1,
                //       // fillColor: Colors.(0xFFC7E76C),
                //     ),
                //     Text('Age < 16'),
                //     Radio(
                //         value: 1,
                //         groupValue: radioValue1,
                //         onChanged: handleRadioValueChange1),
                //     Text('Age > 16'),
                //   ],
                // ),
                Divider(),
                Container(
                  // height: 50,
                  // width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFC7E76C),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                      onPressed: () {
                        if (_gController.text != null &&
                            _gController.text == "M") {
                          Provider.of<QuestionaireState>(context, listen: false)
                              .onPutAnswer({1: "1"});
                        } else {
                          Provider.of<QuestionaireState>(context, listen: false)
                              .onPutAnswer({1: "0"});
                        }

                        // Provider.of<QuestionaireState>(context, listen: false)
                        //     .onPutAnswer({2: "1"});
                        Patient patient = new Patient(
                          id: '',
                          first_name: _fController.text,
                          middle_name: _mController.text,
                          last_name: _lController.text,
                          region: _rController.text,
                          district: _dController.text,
                          ward: _wController.text,
                          age: _aController.text,
                          gender: _gController.text,
                          street: _sController.text,
                          tel: _tController.text,
                          actitivity: '',
                          tb_status: '',
                          tb_suspect: '',
                        );
                        patientState.savePatient(patient);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Screen()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      )),
                )
              ]));
    });
  }
}
