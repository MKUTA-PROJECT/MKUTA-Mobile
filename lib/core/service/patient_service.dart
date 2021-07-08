import 'package:http/http.dart';
import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/app_state/patient_state.dart';
import 'package:mkuat/core/offline_db_provider/patient.dart';
import 'package:mkuat/core/service/http_service.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

class PatientService {
  static Future<List<Patient>> onRetrievePatientFromOffline() async {
    List<Patient> patientList = [];
    patientList = await ParinetOfflineProvider().getAllPatients();
    return patientList;
  }

  static void onSavePatientToOffline(Patient patient) async {
    ParinetOfflineProvider().addOrUpdateParients(patient);
  }

  Future updatePatientAnalysisValue(
    Patient currentPatient, String analysisValue) {
    print("data on update");
    print(analysisValue);
    print("patient is");
    print(currentPatient.first_name);
    Patient patient = new Patient(
        id: uuid.v1(),
        first_name: currentPatient.first_name,
        middle_name: currentPatient.middle_name,
        last_name: currentPatient.last_name,
        gender: currentPatient.gender,
        tel: currentPatient.tel,
        age: currentPatient.age,
        date: currentPatient.date,
        region: currentPatient.region,
        district: currentPatient.district,
        ward: currentPatient.ward,
        street: currentPatient.street,
        hospitalName: "",
        tb_status: "",
        tb_suspect: "0",
        actitivity: "");
    PatientState().savePatient(patient);
    return null;
  }

  Future<bool> onPostsClientData(Patient patient) async {
    String secondaryUrl = "clients/";
     final now = new DateTime.now();;
    Map<String, dynamic> data = {
      "first_name": patient.first_name,
      "middle_name": patient.middle_name,
      "last_name": patient.last_name,
      "sex": int.parse(patient.gender),
      "tel": patient.tel,
      "age": patient.age,
      "region": patient.region,
      "district": patient.district,
      "ward": patient.ward,
      "street": patient.street,
      "tb_suspect": patient.tb_suspect  == "positive" ? true :false,
      "tb_status":  patient.tb_status  == "1" ? true :false,
      "activity": patient.actitivity,
      "date":patient.date
    };

    Response response =
        await HttpService().httpPosts(data, secondaryUrl: secondaryUrl);
    if (response.statusCode == 201) {
      print("on reson");
      return true;
    } else {
      print(response.body);
      print("on delete");
      return false;
    }
  }
}
