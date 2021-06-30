import 'package:mkuat/core/service/http_service.dart';
import 'package:http/http.dart' as http;

class LoginService {
  Future<bool> onLogin(String email, String password) async {
    String secondaryUrl = "login/";
    Map<String, dynamic> bodyData = {"email": email, "password": password};
    http.Response response =
        await HttpService().httpPosts(bodyData, secondaryUrl: secondaryUrl);

    if (response.statusCode == 200) {
      print(response.body);
      return true;
    }
    return false;
  }
}
