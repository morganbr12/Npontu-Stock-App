import 'package:flutter/material.dart';
// this is the next page after the sign up page

import '../widgets/verify_description.dart';
import '../widgets/verify_forms.dart';
import '../widgets/verify_button.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
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
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                VerifyDescription(),
                VerifyForm(),
                VerifyButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
