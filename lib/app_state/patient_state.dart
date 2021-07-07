import 'package:flutter/foundation.dart';
import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/core/service/patient_service.dart';

class PatientState with ChangeNotifier {
//initilisation
  bool _isLoading;
  List<Patient> _patientList;
  Patient _currentPatient;
  bool _trackUpload;

//selector
  bool get isLoading => _isLoading ?? false;
  List<Patient> get patientList => _patientList ?? [];
  Patient get currentPatient => _currentPatient;
  bool get trackUpload => _trackUpload ?? false;

  //reducer
  savePatient(Patient patient) {
    _isLoading = true;
    _currentPatient = patient;
    notifyListeners();
    PatientService.onSavePatientToOffline(patient);
    _isLoading = false;
    notifyListeners();
    print("first name is " + currentPatient.first_name);
  }

  Future getPatient() async {
    _isLoading = true;
    _patientList = await PatientService.onRetrievePatientFromOffline();
    _isLoading = false;
    notifyListeners();
  }

  onSetTrackUpload()async {
    _trackUpload = true;
    notifyListeners();
    print(currentPatient.first_name);
   if(await PatientService().onPostsClientData(currentPatient)){
      _trackUpload = false;
    notifyListeners();
   }
  }
}
