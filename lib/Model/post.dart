import 'user.dart';

class Post {
  int? id;
  String? body;
  String? name;
  String? category;
  double? price;
  String? image;
  User? user;
  String? created_at;

  Post({
    this.id,
    this.body,
    this.name,
    this.category,
    this.price,
     this.image,
    this.user,
    this.created_at,
  });

// map json to post model

factory Post.fromJson(Map<String, dynamic> json) {
  return Post(
    id: json['id'],
    body: json['body'],
    name: json['name'],
    category: json['category'],
    price: json['price'],
    image: json['image'],
    created_at: json['created_at'],
    user: User(
      id: json['user']['id'],
      name: json['user']['name'],
      image: json['user']['image']
    )
  );
}

}
