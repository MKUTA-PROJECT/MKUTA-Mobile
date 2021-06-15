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
          RaisedButton(
                         child: Text('Start machine learning'),
            onPressed: (){
              learnDemo();
            },
          ),
        ],
      ),
    );
  }

  learnDemo() async{
    List<double> X = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
    print("Random Forest");
    print(svc.predict(X));
  }
}
