import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new'),
      ),
      body: ListView(
        children: [
          Column(
            children:  const [
              Center(
                child: Text('new Page'),
              )
            ],
          )
        ],
      ),
    );
  }
}
