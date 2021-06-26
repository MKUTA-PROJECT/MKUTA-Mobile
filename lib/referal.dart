import 'package:flutter/material.dart';

class Referal extends StatefulWidget {
  @override
  _ReferalState createState() => _ReferalState();
}

class _ReferalState extends State<Referal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color(0xFFC7E76C),
          title: Text('Referal/Sputum Collection'),
        ),
        body: (ListView(
          padding: EdgeInsets.only(top: 30.0),
          // title: Text('Screening'),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('Sputum Collection'),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Register()),
              //   );
              // },
            ),
            // Divider(),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('Referal'),
              // onTap: ()
              // {
              //   //registration of patient goes here
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Community()),
              //   );
              // },
            )
          ],
        )));
  }
}
