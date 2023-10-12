// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Catlog {
  static List<Item> items = [
    // Item(
    // id: 1,
    // name: "iPhone 12 Pro",
    // desc: "Apple iPhone 12th generation",
    // price: 999,
    // color: "#33505a",
    // image:
    //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
}

class Item {
  final String name;
  final int id;
  final String desc;
  final num price;
  final String image;
  final String color;

  Item(
    this.name,
    this.id,
    this.desc,
    this.price,
    this.image,
    this.color,
  );

  // By extension

  Item copyWith({
    String? name,
    int? id,
    String? desc,
    num? price,
    String? image,
    String? color,
  }) {
    return Item(
      name ?? this.name,
      id ?? this.id,
      desc ?? this.desc,
      price ?? this.price,
      image ?? this.image,
      color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
      'desc': desc,
      'price': price,
      'image': image,
      'color': color,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['name'] as String,
      map['id'] as int,
      map['desc'] as String,
      map['price'] as num,
      map['image'] as String,
      map['color'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(name: $name, id: $id, desc: $desc, price: $price, image: $image, color: $color)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.id == id &&
        other.desc == desc &&
        other.price == price &&
        other.image == image &&
        other.color == color;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        id.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        image.hashCode ^
        color.hashCode;
  }
}


// Manually:---
//Decoding the data
// factory Item.fromMap(Map<String, dynamic> map) {
//     return Item(
//       color: map["color"],
//       desc: map["desc"],
//       id: map["id"],
//       image: map["image"],
//       name: map["name"],
//       price: map["price"],
//     );
//   }

// // again encoding it for future
//   toMap() => {
//         "id": id,
//         "desc": desc,
//         "image": image,
//         "color": color,
//         "price": price,
//         "name": name,
//       };
