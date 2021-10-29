import 'package:flutter/material.dart';

import './Screens/homepage_screen.dart';



void main() {
  runApp(StockMarket());
}

class StockMarket extends StatelessWidget {
   const StockMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: StockHomePage(),
    );
  }
}



