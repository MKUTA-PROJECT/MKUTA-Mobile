import 'package:flutter/material.dart';

class SputumForm extends StatefulWidget {
  //const SputumForm({Key? key}) : super(key: key);

  @override
  _SputumFormState createState() => _SputumFormState();
}

class _SputumFormState extends State<SputumForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sputum collection'),
      ),
    );
  }
}
