import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Text(""),
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(child: Text('WELCOME TO MKUTA'))
        );
  }
}
