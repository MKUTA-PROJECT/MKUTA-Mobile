import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/UI/model/referal/referal.dart';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:provider/provider.dart';

class ReferalForm extends StatefulWidget {
  //const ReferalForm({ Key? key }) : super(key: key);

  @override
  _ReferalFormState createState() => _ReferalFormState();
}

class _ReferalFormState extends State<ReferalForm> {
  int radioValue = -1;

  var child;
  TextEditingController _ageController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _hospitalController = new TextEditingController();
  TextEditingController _genderController = new TextEditingController();
  int tb_status = 0;
  @override
  void initState() {
    super.initState();
    _nameController.text = Provider.of<PatientState>(context, listen: false)
            .currentPatient
            .first_name +
        " " +
        Provider.of<PatientState>(context, listen: false)
            .currentPatient
            .last_name;
    _ageController.text =
        Provider.of<PatientState>(context, listen: false).currentPatient.age;
    _genderController.text =
        Provider.of<PatientState>(context, listen: false).currentPatient.gender;
  }

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          setState(() {
            tb_status = 0;
          });
          break;
        case 1:
          setState(() {
            tb_status = 1;
          });
          break;
      }
    });
  }

  Widget build(BuildContext context) {
    return Consumer<PatientState>(
        builder: (BuildContext context, patientState, child) {
      Patient currentPatient = patientState.currentPatient;
      return Scaffold(
          appBar: AppBar(
            title: Text('Referal Form'),
            backgroundColor: Color(0xFFC7E76C),
          ),
          body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              // ignore: missing_required_param
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Patient Information'),
                    TextFormField(
                      controller: _nameController,
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
                      controller: _genderController,
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
                        Spacer(),
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
                    Divider(),
                    Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      //color: Color(0xFFC7E76C),
                      child: TextButton(
                        onPressed: () {
                          // Navigator.pop(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Referal()),
                          // );
                          Patient patient = new Patient(
                              id: currentPatient.id,
                              first_name: currentPatient.first_name,
                              middle_name: currentPatient.middle_name,
                              last_name: currentPatient.last_name,
                              gender: currentPatient.gender,
                              tel: currentPatient.tel,
                              age: currentPatient.age,
                              region: currentPatient.region,
                              district: currentPatient.district,
                              ward: currentPatient.ward,
                              street: currentPatient.street,
                              tb_status: tb_status == 1 ? "positive" :"negative",
                              tb_suspect: "1",
                              actitivity: "" ,
                              hospitalName: _hospitalController.text
                              );
                               patientState.savePatient(patient);
                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Referal()),
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
    });
  }
}
