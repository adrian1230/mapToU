import 'dart:convert';

class ProductModel {
  int id;
  String name;
  String category;
  double price;
  String shopName;
  int numberOnStock;
  String imgLink;
  String subHeader;
  String description;

  ProductModel({
    this.id,
    this.name,
    this.category,
    this.price,
    this.shopName,
    this.numberOnStock,
    this.imgLink,
    this.subHeader,
    this.description
  });

  ProductModel copyWith({
    int id,
    String name,
    String category,
    double price,
    String shopName,
    int numberOnStock,
    String imgLink,
    String subHeader,
    String description
  }) => 
      ProductModel(
        id: id ?? this.id,
        name: name ?? this.name,
        category: category ?? this.category,
        price: price ?? this.price,
        shopName: shopName ?? this.shopName,
        numberOnStock: numberOnStock ?? this.numberOnStock,
        imgLink: imgLink ?? this.imgLink,
        subHeader: subHeader ?? this.subHeader,
        description: description ?? this.description,
      );

  factory ProductModel.fromRawJson(String str) => ProductModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    category: json["category"] == null ? null : json["category"],
    price: json["price"] == null ? null : json["price"],
    shopName: json["shopName"] == null ? null : json["shopName"],
    numberOnStock: json["numberOnStock"] == null ? null : json["numberOnStock"],
    imgLink: json["imgLink"] == null ? null : json["imgLink"],
    subHeader: json["subHeader"] == null ? null : json["subHeader"],
    description: json["description"] == null ? null : json["description"]
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "category": category == null ? null : category,
    "price": price == null ? null : price,
    "shopName": shopName == null ? null : shopName,
    "numberOnStock": numberOnStock == null ? null : numberOnStock,
    "imgLink": imgLink == null ? null : imgLink,
    "subHeader": subHeader == null ? null : subHeader,
    "description": description == null ? null : description
  };
}