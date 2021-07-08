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
        // drawerScrimColor: Colors.black,

        appBar: AppBar(
          title: const Text(
            ' Client Registration',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFFC7E76C),
          centerTitle: true,
          // centerTitle: true,
          // elevation: 0.0,
        ),
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            child: RegisterForm(),
          ),
        ),
      );
    }
  }

