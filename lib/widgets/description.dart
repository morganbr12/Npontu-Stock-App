// this is the description on the first login page

import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 8,
            top: 0,
            right: 0,
            left: 0,
          ),
          child: const Text(
            "Npontu",
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            bottom: 20,
            top: 0,
            right: 0,
            left: 0,
          ),
          child: const Text(
            "Stock Management",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 34,
              letterSpacing: 2.0,
              color: Color.fromRGBO(224, 115, 42, 1),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 0,
            bottom: 25,
            right: 20,
            left: 0,
          ),
          child: const Text(
            "Stock keeping made easy with Npontu Stock Management System",
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 1.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
