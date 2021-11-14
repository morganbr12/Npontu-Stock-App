import 'package:flutter/material.dart';

import '../classes/thing.dart';

class Category extends StatelessWidget {
  const Category({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: 80,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) => Card(
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/sd.jpeg',
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
