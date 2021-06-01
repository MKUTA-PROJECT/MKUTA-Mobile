import 'package:flutter/material.dart';
import 'package:mkuat/qns/questions.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int radioValue = -1;

  var child;

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

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'MiddleName',
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              Divider(),
              TextFormField(
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
              // TextFormField(
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Gender', //radioButton goes here
              // child Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              Text('Gender'),

              //  child: Row( Radio(
              //     value: 0,
              //     groupValue: radioValue,
              //     onChanged: handleRadioValueChange),
              // Text('Male'),
              // Radio(
              //     value: 1,
              //     groupValue: radioValue,
              //     onChanged: handleRadioValueChange),
              // Text('Female'),),
              //],
              //),
              // ),
              // validator: (String value) {
              // if (value.trim().isEmpty) {
              // return 'Full name is required';
              // }
              // },
              // ),
              Divider(),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age', // dropdown age range goes here
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              Divider(),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Color(0xFFC7E76C), fontSize: 25),
                    ),
                  )),
              SizedBox(
                height: 130,
              ),
            ]));
  }
}
