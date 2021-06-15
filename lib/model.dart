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
    loadModel("assets/model_tb.json").then((x1) {
       List<double> X = [0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
   RandomForestClassifier r = RandomForestClassifier.fromMap(json.decode(x1));
  print(r.predict(X));
  
  
    // print(json.decode(x));
    //   this.svc = RandomForestClassifier.fromMap(json.decode(x));
    //   List<double> X = [
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1,
    //     1
    //   ];
    //   print("Random Forest");
    //  print(this.svc.predict(X));
    });
  }
//  @override
//   void initState() {
//     super.initState();
//     List<double> a = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];

//         // add any widget with svc.predict() callback
//     print(svc.predict(a));
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('RandomForest algorithm demonstration'),
          ElevatedButton(
            child: Text('Start machine learning'),
            onPressed: () {
              learnDemo();
            },
          ),
        ],
      ),
    );
  }

  learnDemo() async {}
}
