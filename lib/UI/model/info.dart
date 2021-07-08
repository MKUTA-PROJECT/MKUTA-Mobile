import 'package:flutter/foundation.dart';

class Info {
  int female_below_15;
  int female_above_15;
  int male_below_15;
  int male_above_15;
  String date;
  String zone;
  String region;
  String district;
  String sub_district;
  String ward;
  String street;

  Info(
      {
      @required this.female_below_15,
      @required this.female_above_15,
      @required this.male_below_15,
      @required this.male_above_15,
      @required this.date,
      @required this.zone,
      @required this.region,
      @required this.district,
      @required this.sub_district,
      @required this.ward,
      @required this.street,
     });
}
