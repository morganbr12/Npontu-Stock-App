import 'package:flutter/material.dart';


import '../widgets/description.dart';
import '../widgets/buttons.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 450,
                  child: Image.asset(
                      'assets/loginImages/3.jpeg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  height: 500,
                  decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0),
                    Color.fromRGBO(0, 0, 0, 1),
                  ]
                   ),
                  ),
                ),
              ],
            ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:   [
                       const  Description(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Buttons(),
                          ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
    );
  }
}
