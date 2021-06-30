import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
  };

  String baseUrl = "http://mkuta.herokuapp.com/";

  Future<http.Response> httpGet() async {
    http.Response response =
        await http.get(Uri.parse(baseUrl), headers: headers);
    return response;
  }

  Future<http.Response> httpPost(Map<String, List<String>> postData) async {
    String baseUrl = "https://tb-model-2.herokuapp.com/";

    http.Response response = await http.post(Uri.parse(baseUrl),
        headers: headers, body: json.encode(postData));
    return response;
  }

  Future<http.Response> httpPosts(Map<String, dynamic> postData,
      {String secondaryUrl}) async {
    http.Response response = await http.post(Uri.parse(baseUrl + secondaryUrl),
        headers: headers, body: json.encode(postData));
    return response;
  }
}
