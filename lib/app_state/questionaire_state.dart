import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:mkuat/core/service/patient_service.dart';
import 'package:mkuat/core/service/questionaire_service.dart';

class QuestionaireState extends ChangeNotifier {
//init state
  List<Map<int, String>> _answerslist = [];
  bool _isSubmit;
  bool _onResult;
  double _currentResults;

// selector
  List<Map<int, String>> get answerslist => _answerslist ?? [];
  bool get isSubmit => _isSubmit ?? false;
  bool get onResult => _onResult ?? false;
  double get currentResults => _currentResults ?? "";
// reducer

  void onPutAnswer(Map<int, String> answer) {
    List<Map<int, String>> myanswers = [];
    myanswers.add(answer);
    _answerslist.addAll(myanswers);
    notifyListeners();
  }

  Future<void> onSubmitAnswers(Patient patient) async {
    _isSubmit = true;
    notifyListeners();
    List<String> onAnswers = [];
    for (int questionNo = 1; questionNo < 24; questionNo++) {
      // Map<int, String> singleAnwser in answerslist
      answerslist.forEach((Map<int, String> answer) {
        if (answer.keys.contains(questionNo)) {
          if (answer[questionNo] != null) {
            onAnswers.add(answer[questionNo]);
          }
          //else {
          //   onAnswers.add("0");
          // }
        } else {
          // print(questionNo);
        }
      });
    }
    print('The answer is');
    print(onAnswers);
    double result = await QuestionService().onGetResultFromServer(onAnswers);

    await PatientService()
        .updatePatientAnalysisValue(patient, result.toString());
    _currentResults = result;
    _onResult = true;
    _answerslist.clear();
    notifyListeners();

    _isSubmit = false;
    _answerslist.clear();
    onAnswers.clear();
  }
}
