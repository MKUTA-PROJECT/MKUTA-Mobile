import 'package:flutter/material.dart';
import 'package:mkuat/UI/Dahboard/screening.dart';
import 'package:mkuat/UI/main/login.dart';
import 'package:mkuat/UI/model/referal/sputum_referal.dart';
import 'education.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //padding: EdgeInsets.only(top: 20.0),
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                children: [
                  // Icon(
                  //   Icons.person,
                  //   size: 10.0,
                  //   // color: Color(0xFFC7E76C)
                  // ),
                  UserAccountsDrawerHeader(
                      accountName: new Text('admin'),
                      accountEmail: new Text(
                        "admin@gmail.com",
                      )),
                ],
              ),
            ),

            //decoration: BoxDecoration()
          ),
          ListTile(
            leading: Icon(Icons.info, color: Color(0xFFC7E76C)),
            title: Text('TB info & Education'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Education()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.local_hospital, color: Color(0xFFC7E76C)),
            title: Text('Active Case Finding'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screening()),
              );
            },
          ),
          ListTile(
            leading:
                Icon(Icons.local_hospital_outlined, color: Color(0xFFC7E76C)),
            title: Text('Referal/Sputum Collection'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Referal()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.local_hospital,
              color: Color(0xFFC7E76C),
            ),
            title: Text('TB Test Result'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.local_hospital,
              color: Color(0xFFC7E76C),
            ),
            title: Text('Contact Tracing'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Color(0xFFC7E76C),
            ),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
        ],
      ),
    );
  }
}
