import 'package:flutter/material.dart';


// this is the button for sign up page


class SignUpButton extends StatelessWidget {
  const SignUpButton({Key key}) : super(key: key);

  void toVerifyPage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/verify');
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
            onPressed: () => toVerifyPage(context),
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
                  'Sign UP',
                  style: TextStyle(fontSize: 24, ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
