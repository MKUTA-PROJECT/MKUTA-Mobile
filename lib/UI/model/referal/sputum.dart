import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/referal/sputumForm.dart';

class Sputum extends StatefulWidget {
  //const Sputum({Key? key}) : super(key: key);

  @override
  _SputumState createState() => _SputumState();
}

class _SputumState extends State<Sputum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sputum Collection Form'),
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
                        Text('list of client sputum Collected '),
                      ]),
                      Column(children: [
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline_rounded),
                          color: Color(0xFFC7E76C),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SputumForm()),
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
                            Column(children: [Text('Date Collected')]),
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
            )
            )
    );
  }
}
