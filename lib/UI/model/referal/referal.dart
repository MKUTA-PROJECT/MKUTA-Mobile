import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/referal/referalForm.dart';

class Referal extends StatefulWidget {
  //const Referal({ Key? key }) : super(key: key);

  @override
  _ReferalState createState() => _ReferalState();
}

class _ReferalState extends State<Referal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Referal'),
          backgroundColor: Color(0xFFC7E76C),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Text('list of Referal '),
                      ]),
                      Column(children: [
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline_rounded),
                          color: Color(0xFFC7E76C),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReferalForm()),
                            );
                          },
                        )
                      ]),
                    ],
                  ),
                  Container(
                    child: Table(
                        defaultColumnWidth: FixedColumnWidth(80.0),
                        border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          // width: 2
                        ),
                        children: [
                          TableRow(children: [
                            Column(children: [Text('Name of client')]),
                            Column(children: [Text('Date refered')]),
                            Column(children: [Text('status')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('ali')]),
                            Column(children: [Text('26-06-2020')]),
                            Column(children: [Text('negative')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('asha')]),
                            Column(children: [Text('03-09-2020')]),
                            Column(children: [Text('positive')]),
                          ]),
                        ]),
                  )
                ],
              ),
            )));
  }
}
