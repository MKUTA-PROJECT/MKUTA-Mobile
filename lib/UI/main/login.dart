// choose file
import 'package:flutter/material.dart';
import 'package:mkuat/app_state/Login_State.dart';
import 'package:provider/provider.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String email, password;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginState>(
        builder: (BuildContext context, loginState, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0, bottom: 30.0),
                      child: Center(
                        child: Container(
                            width: 200,
                            height: 150,
                            child: Image.asset('images/logo.jpg')),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFFC7E76C),
                          ),
                          border: OutlineInputBorder(),
                          
                          labelText: 'Email',
                          hintText: 'Valid email',
                        ),
                        validator: (value) {
                          if (value.isEmpty)
                            return "Your username or password is incorrect";
                        },
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Color(0xFFC7E76C),
                          ),
                          border: OutlineInputBorder(),
                          
                          labelText: 'Password',
                          hintText: 'Secure password',
                        ),
                        validator: (value) {
                          if (value.isEmpty) return "incorrect password ";
                        },
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     'Forgot Password',
                    //     style: TextStyle(color: Colors.black, fontSize: 15),
                    //   ),
                    // ),
                    Divider(),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFFC7E76C),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              await loginState.onsetLogin(_emailController.text,
                                  _passwordController.text);
                              if (loginState.isAuth) {
                                 setState(() {
                                  _emailController.text = "";
                                  _passwordController.text = "";
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home())
                                        );
                              } else {
                                setState(() {
                                  _emailController.text = "";
                                  _passwordController.text = "";
                                });
                                print("not allow in ogin");
                              }
                            }
                          },
                          child: loginState.isLogin
                              ? CircularProgressIndicator()
                              : Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                  ],
                ))),
      );
    });
  }
}
