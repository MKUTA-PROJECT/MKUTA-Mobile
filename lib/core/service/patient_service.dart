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
    print("data on update");
    print(currentPatient.tb_suspect);
    print(analysisValue);
    Patient patient = new Patient(
      id: currentPatient.id,
      first_name:currentPatient.first_name ,
      middle_name: currentPatient.middle_name,
      last_name: currentPatient.last_name,
      gender:currentPatient.gender ,
      tel: currentPatient.tel,
      age:currentPatient.age ,
      region:currentPatient.region ,
      district: currentPatient.district,
      ward:currentPatient.ward,
      street:currentPatient.street,
      tb_status:"",
      tb_suspect:analysisValue, actitivity:"");
    PatientState().savePatient(patient);
    return null;
  }
}
