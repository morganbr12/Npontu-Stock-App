import 'package:flutter/material.dart';

class CategoriesProduct extends StatelessWidget {
  String id;
  String name;
      String price;
      String brand;
  String image;
  DateTime date;

  CategoriesProduct(
      this.id,
      this.name,
      this.price,
      this.brand,
      this.image,
      this.date,

      {Key key}) : super(key: key);
  void toSelectedProductPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
        '/modify',
      arguments: {
          'id': id,
         "name": name,
        "price": price,
        "brand": brand,
        "image": image,
        'date': date,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => toSelectedProductPage(context),
      child: Row(
        children: [
          Container(
            height: 118,
            width: 136,
            margin: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                  image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                width: 220,
                child: Text(
                  price,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontSize: 21
                  ),
                ),
              ),
              Text(
                  "\$$brand",
                style: const TextStyle(
                  fontSize:23,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
