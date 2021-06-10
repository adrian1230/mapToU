import 'dart:convert';

class ShopModel {
  int id;
  String name;
  String category;
  String address;
  String phoneNumber;
  List<String> deliveryOptions;
  double latitude;
  double longitude;

  ShopModel(
      {this.id,
      this.name,
      this.category,
      this.address,
      this.phoneNumber,
      this.deliveryOptions,
      this.latitude,
      this.longitude});

  ShopModel copyWith({
    int id,
    String name,
    String category,
    String address,
    String phoneNumber,
    List deliveryOptions,
    double latitude,
    double longitude,
  }) =>
      ShopModel(
          id: id ?? this.id,
          name: name ?? this.name,
          category: category ?? this.category,
          address: address ?? this.address,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          deliveryOptions: deliveryOptions ?? this.deliveryOptions,
          latitude: latitude ?? this.latitude,
          longitude: longitude ?? this.longitude);

  factory ShopModel.fromRawJson(String str) =>
      ShopModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShopModel.fromJson(Map<String, dynamic> json) => ShopModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        category: json["category"] == null ? null : json["category"],
        address: json["address"] == null ? null : json["address"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        deliveryOptions:
            json["deliveryOptions"] == null ? null : json["deliveryOptions"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "category": category == null ? null : category,
        "address": address == null ? null : address,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "deliveryOptions": deliveryOptions == null ? null : deliveryOptions,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude
      };
}
