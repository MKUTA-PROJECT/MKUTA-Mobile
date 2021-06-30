import 'package:flutter/material.dart';
import 'package:mkuat/UI/model/referal/referal.dart';
// import 'package:mkuat/UI/model/referal/referal.dart';
// import 'package:mkuat/UI/model/referal/sputum.dart';
import 'package:mkuat/app_state/questionaire_state.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

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
          backgroundColor: Colors.white,
          appBar: AppBar(
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
                      centerText: "Results",
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
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: true,
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
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                            ),
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
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Referal()),
                                    );
                                   },
                                  child: Text('Refer client hHere'),
                                )
                              ],
                            )
                          ],
                        ))
                  ]))),
    );
  }
}
