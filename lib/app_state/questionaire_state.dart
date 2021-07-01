import 'dart:core';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:mkuat/core/service/patient_service.dart';
import 'package:mkuat/core/service/questionaire_service.dart';

class QuestionaireState extends PatientState {
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

  Future<void> onSubmitAnswers() async {
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

    double result = await QuestionService().onGetResultFromServer(onAnswers);
    print("on results    ");
    print(result);
    await PatientService.updatePatientAnalysisValue(
          currentPatient, result.toString());
    _currentResults = result;
    _onResult = true;
     
    _answerslist.clear();
    notifyListeners();
  }
}
