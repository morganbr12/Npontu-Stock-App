import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_market/Api/api.dart';
import 'package:stock_market/Screens/searchs.dart';


// this is the sign up scaffold page


import '../widgets/signup_description.dart';
import '../widgets/signup_form.dart';
import '../widgets/signup_button.dart';

class SignUpPageScreen extends StatefulWidget {
  const SignUpPageScreen({Key key}) : super(key: key);

  @override
  State<SignUpPageScreen> createState() => _SignUpPageScreenState();
}

class _SignUpPageScreenState extends State<SignUpPageScreen> {
  void toLoginPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/login');
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

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

  _register() async {
    var data = {
      'name': nameController.text,
      'email' : emailController.text,
      'password' : passController.text,
      'confrim': confirmController.text,
    };

    var res = await CallApi().postData(data, 'register');
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
          children:  [
            Stack(
              children: [Container(
                width: double.maxFinite,
                height: 450,
                child: Image.asset(
                  'assets/loginImages/2.jpeg',
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
              margin: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 130,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 250,
                          margin: const EdgeInsets.only(bottom: 25),
                          child: const Text(
                            'Let\'s  Get You Started',
                            style: TextStyle(
                                fontSize: 37,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 25),
                          child: const Text(
                            'Stock keeping made easy with Npontu Stock Management System',
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: TextField(
                            onTap: () {},
                            controller: nameController,
                            style: const TextStyle(
                              fontSize: 15,
                              height: 1.0,
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(6),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 1),
                              ),
                              hintText: "FullName",
                              hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: TextField(
                            onTap: () {},
                            controller: emailController,
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
                              border:  OutlineInputBorder(
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: TextField(
                            onTap: () {},
                            controller: passController,
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
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: TextField(
                            style: const TextStyle(
                              fontSize: 15,
                              height: 1.0,
                              color: Colors.white,
                            ),
                            onTap: () {},
                            controller: confirmController,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 1),
                              ),
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                              border:  OutlineInputBorder(
                                //     {
                                //   bordrSide: const BorderSide(color: Colors.red),
                                //   borderRadius: const BorderRadius.circular(10)
                                // }
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 15,
                        bottom: 18,
                        right: 0,
                        left: 0,
                      ),
                      child:  Center(
                          child: ElevatedButton(
                            onPressed: () => _register(),
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
                                  'Sign UP',
                                  style: TextStyle(fontSize: 24, ),
                                ),
                              ),
                            ),
                          )
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            ),
                          ),
                          TextButton(
                            onPressed: () => toLoginPage(context),
                            child: const Text('Login',
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
          ],
        ),
        ]
      ),
    );
  }
}
