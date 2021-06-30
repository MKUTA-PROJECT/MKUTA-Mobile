  
import 'package:flutter/foundation.dart';
import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/core/service/patient_service.dart';

class PatientState with ChangeNotifier {
//initilisation
  bool _isLoading;
  List<Patient> _patientList;
  Patient _currentPatient;

//selector
  bool get isLoading => _isLoading ?? false;
  List<Patient> get patientList => _patientList ?? [];
  Patient get currentPatient => _currentPatient ?? [];

  //reducer
  savePatient(Patient patient) {
    _isLoading = true;
    _currentPatient = patient;
    PatientService.onSavePatientToOffline(patient);
    _isLoading = false;
    notifyListeners();
  }

  Future getPatient() async {
    _isLoading = true;
    _patientList = await PatientService.onRetrievePatientFromOffline();
    _isLoading = false;
    notifyListeners();
  }
}