import 'dart:convert';
import 'package:http/http.dart';
import 'package:mkuat/UI/model/locationModel/district.dart';
import 'package:mkuat/UI/model/locationModel/region.dart';
import 'package:mkuat/UI/model/locationModel/ward.dart';
import 'location_http_service.dart';

class LocationServices {
  Future<List<Region>> GetRegion() async {
    String secondaryUrl = "/Region/";
    Response response = await HttpLocationService().getHttp(secondaryUrl);
    List<Region> regions = [];
    if (response.statusCode == 200) {
      for (dynamic data in json.decode(response.body)) {
        regions.add(Region.fromJson(data));
      }
      return regions;
    } else {
      return regions;
    }
  }

  Future<List<District>> GetDistrict() async {
    String secondaryUrl = "/District/";
    Response response = await HttpLocationService().getHttp(secondaryUrl);
    List<District> districts = [];

    if (response.statusCode == 200) {
      for (dynamic data in json.decode(response.body)) {
        districts.add(District.fromJson(data));
      }
      return districts;
    } else {
      return districts;
    }
  }

  Future<List<Ward>> GetWard() async {
    String secondaryUrl = "/ward/";
    Response response = await HttpLocationService().getHttp(secondaryUrl);
    List<Ward> wards = [];

    if (response.statusCode == 200) {
      for (dynamic data in json.decode(response.body)) {
        wards.add(Ward.fromJson(data));
      }
      //print(response.body);
      return wards;
    } else {
      return wards;
      // print("fail");

    }
  }
}
