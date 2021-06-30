import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:mkuat/core/offline_db_provider/patient.dart';

class PatientService {
  static Future<List<Patient>> onRetrievePatientFromOffline() async {
    List<Patient> patientList = [];
    patientList = await ParinetOfflineProvider().getAllPatients();
    return patientList;
  }

  static void onSavePatientToOffline(Patient patient) async {
    ParinetOfflineProvider().addOrUpdateParients(patient);
  }

  static Future updatePatientAnalysisValue(
      Patient currentPatient, String analysisValue) {
    currentPatient.tb_suspect = analysisValue;
    print(analysisValue);
    PatientState().savePatient(currentPatient);
    return null;
  }
}
