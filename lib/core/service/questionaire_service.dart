import 'dart:convert';

import 'package:http/http.dart';
import 'package:mkuat/core/service/http_service.dart';

class QuestionService {
  Future<double> onGetResultFromServer(List<String> answers) async {
    Response response = await HttpService().httpPost({"question": answers});
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    return 0;
  }
}
