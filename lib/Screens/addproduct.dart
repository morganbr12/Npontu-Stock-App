import 'package:flutter/material.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key key}) : super(key: key);

  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  final TextEditingController _categoryController = TextEditingController();

  final TextEditingController _priceController = TextEditingController();

  String valueChoose;

  final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const  Text(
          'Add Products',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
            child: const Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 1, color: Colors.black, style: BorderStyle.solid)),
              child: TextField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
            child: const Text(
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 1, color: Colors.black, style: BorderStyle.solid)),
              child: TextField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
            child: const Text(
              'Category',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              margin: const EdgeInsets.only(left: 45, right: 45),
              //width: 100,
              //padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 39,
                  //hint: Text('Categories'),
                  style: const TextStyle(fontSize: 10, color: Colors.black),
                  value: value,
                  isExpanded: true,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
            child: const Text(
              'Price',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              margin: const EdgeInsets.only(left: 45, right: 45),
              //width: 100,
              //padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 39,
                  //hint: Text('Categories'),
                  style: const TextStyle(fontSize: 10, color: Colors.black),
                  value: value,
                  isExpanded: true,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                ),
              )),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                child: const Text(
                  'Photo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.add),
                iconSize: 36,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
            child: const Text(
              'Image size should not be more than 1MB',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
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
                     const  LinearGradient(colors: [Colors.red, Colors.yellow]),
                      borderRadius: BorderRadius.circular(7)),
                  child: Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Add',
                      style: TextStyle(fontSize: 24, ),
                    ),
                  ),
                ),
              )
          )

        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ));
}

