import 'package:flutter/material.dart';

class VerifyDescription extends StatelessWidget {
  const VerifyDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 100),
            child: const Text(
                'Verify Account',
              style: TextStyle(
                fontSize: 37,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50.0, bottom: 50),
          child: Text(
              'A verification code has been send to your email',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1.0,
              color: Colors.white,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  Text(
             'Have not receive code?',
             style: TextStyle(
               fontSize: 18,
               letterSpacing: 1.0,
               color: Colors.white,
             ),
           ),
            TextButton(
              onPressed: () {},
              child: const Text(
                  'Resend code',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1.0,
                  color: Color.fromRGBO(221, 115, 42, 1),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
