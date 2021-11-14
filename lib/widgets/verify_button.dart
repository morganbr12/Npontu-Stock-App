import 'package:flutter/material.dart';


import '../widgets/g_button.dart';



class VerifyButton extends StatelessWidget {
  const VerifyButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
        bottom: 18,
        right: 0,
        left: 0,
      ),
      child:  const RaisedGradientButton(
        // onPressed: ,
        child: Text(
          'Sign Up',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25
          ),
        ),
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(238, 119, 39, 1),
            Color.fromRGBO(225, 224, 61, 1),
          ],
        ),
      ),
    );
  }
}
