import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/referal/referal.dart';

class ReferalForm extends StatefulWidget {
  //const ReferalForm({ Key? key }) : super(key: key);

  @override
  _ReferalFormState createState() => _ReferalFormState();
}

class _ReferalFormState extends State<ReferalForm> {
  int radioValue = -1;

  var child;
  TextEditingController _ageController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _hospitalController = new TextEditingController();
  TextEditingController _genderController = new TextEditingController();

  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Referal Form'),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            // ignore: missing_required_param
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Patient Information'),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Name: ',
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: _ageController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Age: ',
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: _genderController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Gender: ',
                    ),
                  ),
                  Divider(),
                  Text(' Hospital Info:'),
                  TextFormField(
                    controller: _hospitalController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Name: ',
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: _genderController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Date ',
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('TB Results'),
                      Spacer(),
                      Radio(
                          value: 1,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChange),
                      Text('Positive'),
                      Radio(
                          value: 0,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChange),
                      Text('Negative'),
                    ],
                  ),
                  Divider(),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    //color: Color(0xFFC7E76C),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Referal()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                              color: Color(0xFFC7E76C), fontSize: 25.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
