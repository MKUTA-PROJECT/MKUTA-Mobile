import 'package:flutter/cupertino.dart';
import 'package:mkuat/core/service/login_service.dart';

class LoginState extends ChangeNotifier {
  bool _isLogin;
  bool _isAuth;

  bool get isLogin => _isLogin ?? false;
  bool get isAuth => _isAuth ?? false;

  Future<void> onsetLogin(String email, String password) async {
    _isLogin = true;
    notifyListeners();
    if (await LoginService().onLogin(email, password)) {
      _isAuth = true;
      notifyListeners();
    }
   else {
      _isAuth = false;
        notifyListeners();

    }
    _isLogin = false;
    notifyListeners();
  }
}
