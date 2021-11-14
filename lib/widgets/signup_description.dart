import 'package:flutter/material.dart';

// the writings on top of the forms

class SignDescription extends StatelessWidget {
  const SignDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
