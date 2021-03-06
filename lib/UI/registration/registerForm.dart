import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/locationModel/district.dart';
import 'package:mkuat/UI/model/locationModel/region.dart';
import 'package:mkuat/UI/model/locationModel/ward.dart';
import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/UI/qns/questions.dart';
import 'package:mkuat/app_state/location_state.dart';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:mkuat/app_state/questionaire_state.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  var selectedDate = new DateTime.now().toString().substring(0, 10);
  var districtname = 'District';
  var wardname = 'Ward';
  var regionname = 'Region';
  Region regionDropDownValue;
  District districtDropDownValue;
  Ward wardDropDownValue;
  bool isDatePresent = false;
  int age;

  int value;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int radioValue = -1;
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
      radioValue = value;
      switch (radioValue) {
        case 0:
         Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({
                1:"0"
              });
          break;
        case 1:
        Provider.of<QuestionaireState>(context, listen: false)
              .onPutAnswer({
                1:"1"
              });
          break;
      }
    });
  }


  @override
  void initState() {
    super.initState();
    initState1();
  }

  void initState1() async {
    await Provider.of<LocationState>(context, listen: false).onGetRegions();
    await Provider.of<LocationState>(context, listen: false).onGetDistrict();
    await Provider.of<LocationState>(context, listen: false).onGetWard();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocationState>(
        builder: (BuildContext context, locationState, child) {
      return Consumer<PatientState>(
          builder: (BuildContext context, patientState, child) {
        return Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              TextFormField(
                controller: _fController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'FirstName',
                ),
                // validator: (String value) {
                //   if (value.trim().isEmpty) {
                //     return 'name is required';
                //   }r
                // },
              ),
              //const SizedBox(height: 16.0),
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

              TextFormField(
                // onSaved: (val) => handleAgeTextField(val),
                controller: _aController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),

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
                  
                      if (int.parse(_aController.text) <= 15) {
                        Provider.of<QuestionaireState>(context, listen: false)
                            .onPutAnswer({2: "0"});
                        print("Age is less than 16");
                      } else {
                        Provider.of<QuestionaireState>(context, listen: false)
                            .onPutAnswer({2: "1"});
                        print("Age is greater than 16");
                      }

                      Patient patient = new Patient(
                          id: '',
                          first_name: _fController.text,
                          middle_name: _mController.text,
                          last_name: _lController.text,
                          region: _rController.text,
                          district:_dController.text,
                          ward: _wController.text,
                          age: _aController.text,
                          gender: _gController.text,
                          street:_sController.text,
                          date: selectedDate,
                          tel: _tController.text,
                          actitivity: '1',
                          tb_status: '',
                          tb_suspect: '',
                          hospitalName: '');
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
    });
  }
}
