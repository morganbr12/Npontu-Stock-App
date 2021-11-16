class ProductDetails{
  int id;
  String category;
  String name;
  String description;
  String created_at;
  String img_url;
  String price;

  ProductDetails(String img_url,int id, String category, String name, String description, String created_at, String price){
    this.id=id;
    this.category=category;
    this.description=description;
    this.name=name;
    this.created_at=created_at;
    this.img_url=img_url;
    this.price=price;
  }

  ProductDetails.fromJson(Map json)
          :id=json['id'],
          price=json['price'],
          category=json['category'],
          description=json['description'],
          name=json['name'],
          created_at=json['created_at'],
          img_url=json['img_url'];
  Map toJson(){
    return {
      'id':id,
      'category':category,
      'name':name,
      'description':description,
      'created_at':created_at,
      'img_url':img_url,
      'price':price,
    };
  }

}