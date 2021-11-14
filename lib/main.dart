import 'package:flutter/material.dart';


import 'login_and_signup/welcome.dart';
import './login_and_signup/login.dart';
import './login_and_signup/signup.dart';
import 'login_and_signup/verify_page.dart';
import './Screens/addproduct.dart';
import './Screens/modify.dart';
import './Screens/searchs.dart';
import './Screens/logoutp.dart';

void main() {
  runApp(const StockMarketApp());
}

class StockMarketApp extends StatelessWidget {
  const StockMarketApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(224, 115, 42, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
              color: Color.fromRGBO(221, 115, 42, 1),
            ),
        ),
      ),
      // home: const WelcomeScreen(),
      initialRoute: '/',

      routes: {
        '/': (ctx) => const WelcomeScreen(),
        '/login': (ctx) => const LoginScreen(),
        '/signup': (ctx) => const SignUpPageScreen(),
        '/verify': (ctx) => const VerifyPage(),
        '/addProduct': (ctx) => const AddProducts(),
        '/modify': (ctx) => const Modify(),
        '/search': (ctx) => const SearchPage(),
        '/logout': (ctx) =>  const LogoutPage(),
      },
    );
  }
}
