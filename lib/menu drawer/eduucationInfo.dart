import 'package:flutter/material.dart';

class EducationInfo extends StatefulWidget {
  const EducationInfo({Key key}) : super(key: key);

  @override
  _EducationInfoState createState() => _EducationInfoState();
}

class _EducationInfoState extends State<EducationInfo> {
  @override
  Widget build(BuildContext context) {
    return Form(
        // key: _infoKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'FirstName',
            ),
          )
          // validator: (String value) {
          //   if (value.trim().isEmpty) {
          //     return 'name is required';
        ]));
  }
}
