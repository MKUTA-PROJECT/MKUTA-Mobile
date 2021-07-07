import 'package:mkuat/UI/model/patient.dart';
import 'package:mkuat/core/offline_db_provider/offline_db_provider.dart';
import 'package:sqflite/sqflite.dart';

class ParinetOfflineProvider extends OfflineDbProvider {
  //columns
  String table = "patient";
  String id = "id";
  String first_name = "first_name";
  String middle_name = "middle_name";
  String last_name = "last_name";
  String gender = "sex";
  String tel = "tel";
  String age = "age";
  String region = "region";
  String district = "district";
  String ward = "ward";
  String street = "street";
  String tb_suspect = "tb_suspect";
  String tb_status = "tb_status";
  String actitivity = "activity";
  String hospital = "hospital";

  addOrUpdateParients(Patient patient) async {
    var dbClient = await db;
    await dbClient.insert(table, patient.toOffline(patient),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  deleteOrganisation(String patientId) async {
    var dbClient = await db;
    return await dbClient
        .delete(table, where: '$id = ?', whereArgs: [patientId]);
  }

  Future<List<Patient>> getAllPatients() async {
    List<Patient> patientList = [];
    try {
      var dbClient = await db;
      List<Map> maps = await dbClient.query(
        table,
        columns: [
          id,
          first_name,
          middle_name,
          last_name,
          gender,
          tel,
          age,
          region,
          district,
          ward,
          street,
          tb_suspect,
          tb_status,
          actitivity,
          hospital
        ],
      );
      if (maps.isNotEmpty) {
        for (Map map in maps) {
          Patient patient = Patient.fromOffline(map);
          patientList.add(patient);
        }
      }
    } catch (e) {}
    patientList.sort((a, b) => a.first_name.compareTo(b.first_name));
    return patientList;
  }
}
