import 'package:flutter/material.dart';
import 'package:mkuat/UI/Dahboard/drawer.dart';
import 'package:mkuat/UI/registration/registerForm.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    drawer: MyDrawer(),
      
      appBar: AppBar(
        title: const Text(' Client Registration'),
        backgroundColor: Color(0xFFC7E76C),
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
