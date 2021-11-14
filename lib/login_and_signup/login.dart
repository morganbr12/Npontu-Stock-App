// this is the login screen

import 'package:flutter/material.dart';


import '../widgets/login_description.dart';
import '../widgets/login_form.dart';
import '../widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  void toSignUpPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/signup');
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
                  const LoginWritings(),
                  const LoginForms(),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Container(
                        margin: const EdgeInsets.only(bottom: 40),
                          child: const LoginButton(),
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
