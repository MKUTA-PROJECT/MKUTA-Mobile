import 'package:flutter/material.dart';
import 'package:mkuat/UI/Dahboard/drawer.dart';
import 'package:mkuat/UI/Dahboard/screening.dart';
import 'package:mkuat/UI/main/home.dart';
import 'package:mkuat/UI/model/referal/referal.dart';
import 'package:mkuat/app_state/questionaire_state.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

import 'referal/sputum.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    double tbValue =
        Provider.of<QuestionaireState>(context, listen: false).currentResults;
    Map<String, double> dataMap = {
      "TB": tbValue,
      "Normal": 1 - tbValue,
    };

    return Container(
      child: Scaffold(
          drawer: MyDrawer(),
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screening()),
                );
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            title: Text("SCREENING RESULT"),
            backgroundColor: Color(0xFFC7E76C),
          ),
          body: SingleChildScrollView(
              padding: EdgeInsets.all(50.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PieChart(
                      dataMap: dataMap,
                      animationDuration: Duration(milliseconds: 800),
                      chartLegendSpacing: 32,
                      chartRadius: MediaQuery.of(context).size.width / 2,
                      colorList: [
                        Colors.red,
                        Colors.green,
                      ],
                      initialAngleInDegree: 0,
                      chartType: ChartType.ring,
                      ringStrokeWidth: 32,
                      centerText: "${tbValue * 100}%",
                      legendOptions: LegendOptions(
                        showLegendsInRow: false,
                        legendPosition: LegendPosition.right,
                        showLegends: true,
                        legendShape: BoxShape.circle,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValueBackground: false,
                        showChartValues: false,
                        showChartValuesInPercentage: false,
                        showChartValuesOutside: true,
                        decimalPlaces: 2,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Divider(),
                    Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        // padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            // Padding(
                            //   padding: EdgeInsets.symmetric(vertical: 10),
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Recommendation",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(),
                                Container(
                                    child: Column(children: <Widget>[
                                  Row(
                                    children: [
                                      InkWell(
                                          child: Text("Refer Client Here"),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Referal()),
                                            );
                                          }),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      InkWell(
                                          child: Text("Collect sputum Here"),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Sputum()),
                                            );
                                          }),
                                    ],
                                  ),
                                ]))
                              ],
                            )
                          ],
                        ))
                  ]))),
    );
  }
}
