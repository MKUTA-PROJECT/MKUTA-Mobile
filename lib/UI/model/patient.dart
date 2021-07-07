import 'package:flutter/foundation.dart';

class Patient {
  String id;
  String first_name;
  String middle_name;
  String last_name;
  String gender;
  String tel;
  String age;
  String region;
  String district;
  String ward;
  String street;
  String tb_suspect;
  String tb_status;
  String actitivity;
  String hospitalName;

  Patient(
      {@required this.id,
      @required this.first_name,
      @required this.middle_name,
      @required this.last_name,
      @required this.gender,
      @required this.tel,
      @required this.age,
      @required this.region,
      @required this.district,
      @required this.ward,
      @required this.street,
      @required this.tb_suspect,
      @required this.tb_status,
      @required this.actitivity,
      @required this.hospitalName});

  Map toOffline(Patient patient) {
    var map = Map<String, dynamic>();
    map['id'] = patient.id;
    map['first_name'] = patient.first_name;
    map['middle_name'] = patient.middle_name;
    map['last_name'] = patient.last_name;
    map['sex'] = patient.gender;
    map['tel'] = patient.tel;
    map['age'] = patient.age;
    map['region'] = patient.region;
    map['district'] = patient.district;
    map['ward'] = patient.ward;
    map['street'] = patient.street;
    map['tb_suspect'] = patient.tb_suspect;
    map['tb_status'] = patient.tb_status;
    map['activity'] = patient.actitivity;
    map['hospital'] = patient.hospitalName;
    return map;
  }

  Patient.fromOffline(Map<String, dynamic> map) {
    this.id = map['id'];
    this.first_name = map['first_name'];
    this.middle_name = map['middle_name'];
    this.last_name = map["last_name"];
    this.gender = map['sex'];
    this.tel = map['tel'];
    this.age = map['age'];
    this.region = map['region'];
    this.district = map["district"];
    this.ward = map['ward'];
    this.street = map['street'];
    this.tb_suspect = map['tb_suspect'];
    this.tb_status = map['tb_status'];
    this.actitivity = map["activity"];
    this.hospitalName = map['hospital'];
  }
}
