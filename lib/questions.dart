import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Screening Questions'),
          ),
       body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            


          ]
      ),   
      )
       ); }
}