import 'package:flutter/material.dart';


// This buttons are for the initial logins



class Buttons extends StatelessWidget {
  const Buttons({Key key}) : super(key: key);
  
   void toLoginScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/login');
  }

   void toSignUpScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 30,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: Center(
              child: ElevatedButton(
                onPressed: () => toLoginScreen(context),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                    ),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient:
                      const  LinearGradient(colors: [Colors.red, Colors.yellow]),
                      borderRadius: BorderRadius.circular(7),
                  ),
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
          )
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            bottom: 30,
            right: 0,
            left: 0,
          ),
          child: Center(
              child: ElevatedButton(
                onPressed: () =>toSignUpScreen(context),
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
        ),
          ],
    );
  }
}
