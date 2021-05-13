import 'package:flutter/material.dart';
import 'package:mkuat/registerForm.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context)

  {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Client Registration'),
        // centerTitle: true,
        // elevation: 0.0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: RegisterForm(),
        ),
      ),
    );


  }
}
