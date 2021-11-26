// this is the login screen

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_market/Api/api.dart';
import 'package:stock_market/Screens/searchs.dart';


import '../widgets/login_description.dart';
import '../widgets/login_form.dart';
import '../widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void toSignUpPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/signup');
  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController textController = TextEditingController();

  _showMsg(msg) { //
    final snackBar = SnackBar(
      backgroundColor: Color(0xFF363f93),
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  _login() async {
    var data = {
      'email' : emailController.text,
      'password' : textController.text,
    };

    var res = await CallApi().postData(data, 'login');
    var body = json.decode(res.body);
    print(body);
    if(body['success']){
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body['user']));
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
    }else{
      _showMsg(body['message']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
          children: [
            Stack(
              children: [Container(
                width: double.maxFinite,
                height: 450,
                child: Image.asset(
                  'assets/loginImages/1.jpeg',
                  fit: BoxFit.fitHeight,
                ),
              ),
                Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0),
                          Color.fromRGBO(0, 0, 0, 1),
                        ]
                    ),
                  ),
                ),
              ]
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  const LoginWritings(),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                          child: TextFormField(
                            controller: emailController,
                            onTap: () {},
                            style: const TextStyle(
                              fontSize: 15,
                              height: 1.0,
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 1),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                          child: TextFormField(
                            controller: textController,
                            onTap: () {},
                            style: const TextStyle(
                              fontSize: 15,
                              height: 1.0,
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 1),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                              border:  OutlineInputBorder(),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Container(
                        margin: const EdgeInsets.only(bottom: 40),
                          child: Container(
                            margin: const EdgeInsets.only(
                              top: 15,
                              bottom: 18,
                              right: 0,
                              left: 0,
                            ),
                            child:  Center(
                                child: ElevatedButton(
                                  onPressed: () => _login(),
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(7))),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        gradient:
                                        const  LinearGradient(colors: [Colors.red, Colors.yellow]),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Container(
                                      width: 300,
                                      height: 50,
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'Login',
                                        style: TextStyle(fontSize: 24, ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                        TextButton(
                          onPressed: () => toSignUpPage(context),
                          child: const Text('Sign Up',
                            style: TextStyle(
                              fontSize: 18,
                               color: Color.fromRGBO(224, 115, 42, 1)
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ],
          ),
            ),
        ]
        ),
    ]
      ),
    );
  }
}
