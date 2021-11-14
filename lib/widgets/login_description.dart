import 'package:flutter/material.dart';


class LoginWritings extends StatelessWidget {
  const LoginWritings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Container(
           width: 200,
           margin: const EdgeInsets.only(bottom: 25),
             child: const Text(
                 'Welcome Back',
               style: TextStyle(
                 fontSize: 44,
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
                fontSize: 20,
                letterSpacing: 2.0,
                color: Colors.white
              ),
            ),
        ),
      ],
    );
  }
}
