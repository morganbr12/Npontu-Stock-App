import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_market/Api/api.dart';
import 'package:stock_market/Screens/searchs.dart';


class LoginForms extends StatefulWidget {
  const LoginForms({Key key}) : super(key: key);

  @override
  State<LoginForms> createState() => _LoginFormsState();
}

// _showMsg(msg) { //
//     final snackBar = SnackBar(
//       backgroundColor: Color(0xFF363f93),
//       content: Text(msg),
//       action: SnackBarAction(
//         label: 'Close',
//         onPressed: () {
//           // Some code to undo the change!
//         },
//       ),
//     );
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }

//   _login() async {
//     var data = {
//       'email' : emailController.text,
//       'password' : textController.text,
//     };

//     var res = await CallApi().postData(data, 'login');
//     var body = json.decode(res.body);
//     print(body);
//     if(body['success']){
//       SharedPreferences localStorage = await SharedPreferences.getInstance();
//      localStorage.setString('token', body['token']);
//       localStorage.setString('user', json.encode(body['user']));
//       Navigator.push(
//           context,
//           new MaterialPageRoute(
//               builder: (context) => SearchPage()));
//     }else{
//       _showMsg(body['message']);
//     }
//   }

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
