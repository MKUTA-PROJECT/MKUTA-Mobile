import 'package:http/http.dart';
import 'package:mkuat/UI/model/info.dart';
import 'http_service.dart';

class InfoService{
  Future<bool> onPostInfo(Info info) async {
  String secondaryUrl = "info/";
  Map<String, dynamic> data = {
    "female_below_15": info.female_below_15,
    "female_above_15": info.female_above_15,
    "male_below_15": info.male_below_15,
    "male_above_15": info.male_above_15,
    "date": info.date,
    "zone": info.zone,
    "region": info.region,
    "sub_district": info.sub_district,
    "district": info.district,
    "ward": info.ward,
    "street": info.street,
  };

  Response response =
      await HttpService().httpPosts(data, secondaryUrl: secondaryUrl);
  if (response.statusCode == 201) {
    print("Info Posted Successful");
    return true;
  } else {
    print(response.body);
    print("Unsuccessful");
    return false;
  }
}
}
