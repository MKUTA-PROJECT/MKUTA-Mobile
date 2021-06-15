import 'package:flutter/material.dart';
import 'package:sklite/ensemble/forest.dart';
import 'package:sklite/utils/io.dart';
import 'dart:convert';

class Model extends StatefulWidget {
  @override
  _ModelState createState() {
    return new _ModelState();
  }
}

class _ModelState extends State<Model> {
  RandomForestClassifier svc;

  _ModelState() {
    loadModel("assets/model.json").then((x) {
      this.svc = RandomForestClassifier.fromMap(json.decode(x));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // add any widget with svc.predict() callback
        );
  }
}
