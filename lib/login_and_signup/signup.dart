import 'package:flutter/material.dart';


// this is the sign up scaffold page


import '../widgets/signup_description.dart';
import '../widgets/signup_form.dart';
import '../widgets/signup_button.dart';

class SignUpPageScreen extends StatelessWidget {
  const SignUpPageScreen({Key key}) : super(key: key);

  void toLoginPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/login');
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
                    const SignDescription(),
                    const SignUpForm(),
                    const SignUpButton(),
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
