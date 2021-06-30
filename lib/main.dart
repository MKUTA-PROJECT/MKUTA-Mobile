import 'package:flutter/material.dart';
import 'package:mkuat/app_state/Login_State.dart';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:mkuat/app_state/questionaire_state.dart';
import 'package:provider/provider.dart';
import 'UI/main/splashScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
         ChangeNotifierProvider(create: (_) => QuestionaireState()),
         ChangeNotifierProvider(create: (_) => LoginState()),
         ChangeNotifierProvider(create: (_) => PatientState()),
        ],
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));
    }}

