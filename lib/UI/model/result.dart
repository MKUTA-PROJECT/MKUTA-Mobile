import 'package:flutter/material.dart';
import 'package:mkuat/UI/Dahboard/drawer.dart';
import 'package:mkuat/UI/Dahboard/screening.dart';
import 'package:mkuat/UI/model/referal/referalForm.dart';
import 'package:mkuat/UI/model/referal/sputumForm.dart';
import 'package:mkuat/UI/registration/register.dart';
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
                        // margin: EdgeInsets.symmetric(
                        //     horizontal: 10.0, vertical: 10.0),
                        // padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Text(
                              "Recommendation",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold, 
                                  ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.symmetric(vertical: 10),
                            // ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Divider(),
                                Column(children: <Widget>[
                                  Container(
                                    child: InkWell(
                                        child: Text(
                                          "Refer Client Here",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                        onTap: () {
                                         // Navigator.popUntil(context, (route) => false)
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ReferalForm()),
                                          );
                                        }),
                                  ),
                                  Divider(),
                                  Container(
                                    child: InkWell(
                                        child: Text("Collect sputum Here",
                                            style: TextStyle(fontSize: 15.0)),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SputumForm()),
                                          );
                                        }),
                                  ),
                                  SizedBox(
                                    height: 100.0,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFC7E76C),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              //Navigator.of(context)
                                              // .pushNamedAndRemoveUntil(
                                              //     'C:/Users/Karzai/Desktop/MKUTA/FYP/Mobile1/MKUTA-Mobile/lib/UI/Dahboard',
                                              //     ModalRoute.withName(''));
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Screening()),
                                              );
                                            },
                                            child: Center(
                                              child: Text(
                                                'New Screening',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFC7E76C),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Register()),
                                              );
                                            },
                                            child: Center(
                                              child: Text(
                                                'Refresh',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ])
                              ],
                            )
                          ],
                        ))
                  ]))),
    );
  }
}
// child: TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context)
//                                             .pushAndRemoveUntil(
//                                                 MaterialPageRoute(
//                                                     builder: (context) =>
//                                                         Screening()),
//                                                 (route) => false);
