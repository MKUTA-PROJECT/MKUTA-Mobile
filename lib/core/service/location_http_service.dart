import 'package:http/http.dart' as http;

class HttpLocationService {
  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
  };

  String basicAPI = "https://tanzaniatx.herokuapp.com/";

  Future<http.Response> getHttp(String secondaryUrl) async {
    var url = Uri.parse(basicAPI + secondaryUrl);
    http.Response response = await http.get(url, headers: headers);
    return response;
  
  }
}
