import 'package:flutter/material.dart';





import '../classes/thing.dart';
import '../widgets/cat_product.dart';
import '../widgets/category.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


  void toAddProductPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/addProduct');
  }

  void toLogOutPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/logout');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        actions:  [
          GestureDetector(
            onTap: () => toLogOutPage(context),
            child: const Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: CircleAvatar(

                  radius: 40,
                backgroundImage: AssetImage(
                    'assets/images/fried.jpeg',
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
            child: const Text(
              'Search',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: const Text(
              'Product is Stock',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 1,
                      color: Colors.black,
                      style: BorderStyle.solid)),
              child: TextField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: const  Text(
              'Categories',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Category(),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: const Text(
              'All products',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: food.map((cat) => CategoriesProduct(
              cat.id,
              cat.name,
              cat.brand,
              cat.price.toString(),
              cat.image,
              cat.date,
            )).toList(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toAddProductPage(context),
        child: const Icon(Icons.add),
        ),
    );
  }
}





