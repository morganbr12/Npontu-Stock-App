

import 'package:flutter/material.dart';

// this is the fill in for the sign up page

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: TextField(
            onTap: () {},
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
    );
  }
}
