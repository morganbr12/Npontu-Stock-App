import 'package:flutter/foundation.dart';


class FOOD_DATA {
  final String id;
  final String name;
  final String brand;
  final double price;
  final String image;
  DateTime date;


  FOOD_DATA({
    @required this.id,
    @required this.name,
    @required this.brand,
    @required this.price,
    @required this.image,
    @required this.date,
  });
}