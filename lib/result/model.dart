import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Model extends StatefulWidget {
  //const Model({ Key? key }) : super(key: key);

  @override
  _ModelState createState() => _ModelState();
}

class _ModelState extends State<Model> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

Future<http.Response> createList(String title) {
  return http.post(
    Uri.parse('https://tb-model-2.herokuapp.com'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );


}
