import 'package:flutter/material.dart';


class LogoutPage extends StatelessWidget {
  const LogoutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: const  CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/2.jpeg')
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Philip Ladzaka',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
            const SizedBox(
              height: 40,
            ),
            Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('Hi there');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient:
                        const LinearGradient(colors: [Colors.red, Colors.yellow]),
                        borderRadius: BorderRadius.circular(7)),
                    child: Container(
                      width: 300,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Logout',
                        style: TextStyle(fontSize: 24, ),
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
