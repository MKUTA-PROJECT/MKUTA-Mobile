import 'package:flutter/material.dart';
import 'package:mkuat/qns/questions.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'FirstName',
                ),
                // validator: (String value) {
                //   if (value.trim().isEmpty) {
                //     return 'name is required';
                //   }
                // },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'MiddleName',
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'LastName',
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Street',
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Ward',
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Region',
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Sex', //dropdown goes here
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Age', // dropdown age range goes here
                ),
                // validator: (String value) {
                // if (value.trim().isEmpty) {
                // return 'Full name is required';
                // }
                // },
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Save and Continue',
                      style: TextStyle(color: Color(0xFFC7E76C), fontSize: 25),
                    ),
                  )),
              SizedBox(
                height: 130,
              ),
            ]));
  }
}
