import 'package:flutter/material.dart';

import '../widgets/g_button.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);

  void toHomePage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/search');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
        bottom: 18,
        right: 0,
        left: 0,
      ),
      child:  Center(
          child: ElevatedButton(
            onPressed: () => toHomePage(context),
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
                  'Login',
                  style: TextStyle(fontSize: 24, ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
