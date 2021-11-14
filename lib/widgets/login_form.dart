import 'package:flutter/material.dart';


class LoginForms extends StatefulWidget {
  const LoginForms({Key key}) : super(key: key);

  @override
  State<LoginForms> createState() => _LoginFormsState();
}

class _LoginFormsState extends State<LoginForms> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
       child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15.0, bottom: 8.0),
            child: TextFormField(
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
    );
  }
}
