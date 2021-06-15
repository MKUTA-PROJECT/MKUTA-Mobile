import 'package:flutter/material.dart';
import 'package:mkuat/referal.dart';
import 'menu drawer/education.dart';
import 'menu drawer/screening.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.local_hospital, size: 70.0),
                      Text("TB info & Education")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.local_hospital, size: 70.0),
                      Text("Active Case Finding")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.local_hospital, size: 70.0),
                      Text("Referal/Sputum collection")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.local_hospital, size: 70.0),
                      Text("TB Test Result")
                    ],
                  ))),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.green,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Icon(Icons.local_hospital, size: 70.0),
                      Text("Contact Tracing")
                    ],
                  ))),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Icon(
                  Icons.person,
                  size: 100.0,
                  // color: Color(0xFFC7E76C)
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFC7E76C),
                )),
            ListTile(
              leading: Icon(Icons.local_hospital_rounded),
              title: Text('TB info & Education'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Education()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.collections),
              title: Text('Active Case Finding'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screening()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Referal/Spurum Collection'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Referal()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('TB Test Result'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              //leading: Icon(Icons.),
              title: Text('Contact Tracing'),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Login()),
                // );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Color(0xFFC7E76C),
      ),
    );
  }
}
