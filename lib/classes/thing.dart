import './products.dart';
import './categories.dart';



List<diff_Categories> category = [
 diff_Categories(
     id: 'd1',
     title: 'Burger',
     image: 'assets/images/sd.jpeg',
 ),
 diff_Categories(
  id: 'd2',
  title: 'Pizza',
  image: 'assets/images/sd.jpeg',
 ),
 diff_Categories(
  id: 'd3',
  title: 'Rice',
  image: 'assets/images/sd.jpeg',
 ),
 diff_Categories(
  id: 'd1',
  title: 'Cheese Deep',
  image: 'assets/images/sd.jpeg',
 ),
];



List<FOOD_DATA> food = [
  FOOD_DATA(
    id: 't1',
    name: 'Burger',
      price: 2.29,
    brand: 'Made with Chicken and source',
    image: 'assets/images/fried.jpeg',
   date: DateTime.now()
  ),
  FOOD_DATA(
      id: 't2',
      name: 'Burger',
      price: 3.22,
      brand: 'Made with Chicken and source',
      image: 'assets/images/fd.jpeg',
      date: DateTime.now()
  ),
  FOOD_DATA(
      id: 't3',
      name: 'Burger',
      price: 5.00,
      brand: 'Made with Chicken and source',
      image: 'assets/images/sa.jpeg',
      date: DateTime.now()
  ),
  FOOD_DATA(
      id: 't4',
      name: 'Burger',
      price: 3.78,
      brand: 'Made with Chicken and source',
      image: 'assets/images/sd.jpeg',
      date: DateTime.now()
  ),
];