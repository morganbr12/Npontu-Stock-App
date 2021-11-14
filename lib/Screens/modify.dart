import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

class Modify extends StatefulWidget {
  const Modify({Key key}) : super(key: key);

  @override
  _ModifyState createState() => _ModifyState();
}

void toHomePage(BuildContext ctx) {
  Navigator.of(ctx).pop('/search');
}

class _ModifyState extends State<Modify> {
  @override
  Widget build(BuildContext context) {
    final foodContent = ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final foodName = foodContent['name'];
    final foodBrand = foodContent['brand'];
    final foodPrice = foodContent['price'];
    final foodImage = foodContent['image'];
    final date = foodContent['date'];
    return Scaffold(
      body: ListView(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  foodImage,
                width: double.maxFinite,
                fit: BoxFit.cover,
                height: 380,
              ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0,
                      left: 13,
                      right: 0,
                      bottom: 0,
                  ),
                  child: IconButton(
                    onPressed: () => toHomePage(context),
                      icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                ),
            ]
            ),
          ],
          ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 15),
              child: Text(
                  foodName,
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 15, left: 15),
             child: Text(foodPrice,
              style: const TextStyle(
                fontSize: 28,
                letterSpacing: 1.0
              ),
            ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                children: [
                 const Text('Price:   ',
                   style: TextStyle(
                       fontSize: 28,
                       letterSpacing: 1.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                  Text(
                    "\$$foodBrand",
                    style: const TextStyle(
                        fontSize: 28,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                children: [
                  const Text(
                    'Date:   ',
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMd().format(date),
                    style: const TextStyle(
                      fontSize: 28,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 35,
                bottom: 30,
                right: 0,
                left: 0,
              ),
              child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
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
                          'Modify',
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ],
        )
    );

  }
}
