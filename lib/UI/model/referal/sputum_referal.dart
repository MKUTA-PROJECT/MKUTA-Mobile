import 'package:flutter/material.dart';
import 'package:mkuat/UI/Dahboard/drawer.dart';
import 'package:mkuat/UI/model/referal/sputum.dart';

class Referal extends StatefulWidget {
  @override
  _ReferalState createState() => _ReferalState();
}

class _ReferalState extends State<Referal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xFFC7E76C),
          title: Text('Referal/Sputum Collection'),
        ),
        body: (ListView(
          padding: EdgeInsets.only(top: 30.0),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.local_hospital, color: Color(0xFFC7E76C)),
              title: Text('Sputum Collection'),
              trailing: Icon(
                Icons.add_circle_outline_rounded,
                color: Color(0xFFC7E76C),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sputum()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.local_hospital, color: Color(0xFFC7E76C)),
              title: Text('Referal'),
              trailing: Icon(
                Icons.add_circle_outline_rounded,
                color: Color(0xFFC7E76C),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Referal()),
                );
              },
            ),
            Divider(),
          ],
        )));
  }
}
