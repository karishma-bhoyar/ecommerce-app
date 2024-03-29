// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

class CatalogModel {
  static final catModel = CatalogModel._internal();

  CatalogModel._internal();
  factory CatalogModel() => catModel;

  static var items;

//Get item by ID
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //Get item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id']?.toInt() ?? 0,
      map['name'] ?? '',
      map['desc'] ?? '',
      map['price'] ?? 0,
      map['color'] ?? '',
      map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}


// // ignore_for_file: prefer_typing_uninitialized_variables

// import 'dart:convert';

// class CatalogModel {
//   static final catModel = CatalogModel._internal();

//   CatalogModel._internal();
//   factory CatalogModel() => catModel;

//   late List<Item> items;

// //Get item by ID
//   Item getById(int id) =>
//       items.firstWhere((element) => element.id == id, orElse: null);

//   //Get item by position
//   Item getByPosition(int pos) => items[pos];
// }

// class Item {
//   int id;
//   final String name;
//   final String desc;
//   final num price;
//   final String color;
//   final String image;

//   Item(
//       {required this.id,
//       required this.name,
//       required this.desc,
//       required this.price,
//       required this.color,
//       required this.image});

//   Item copyWith({
//     int? id,
//     String? name,
//     String? desc,
//     num? price,
//     String? color,
//     String? image,
//   }) {
//     return Item(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       desc: desc ?? this.desc,
//       price: price ?? this.price,
//       color: color ?? this.color,
//       image: image ?? this.image,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'desc': desc,
//       'price': price,
//       'color': color,
//       'image': image,
//     };
//   }

//   factory Item.fromMap(Map<String, dynamic> map) {
//     // ignore: unnecessary_null_comparison
//     // if (map == null) return null;
//     return Item(
//       id: map['id'],
//       name: map['name'],
//       desc: map['desc'],
//       price: map['price'],
//       color: map['color'],
//       image: map['image'],
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Item &&
//         other.id == id &&
//         other.name == name &&
//         other.desc == desc &&
//         other.price == price &&
//         other.color == color &&
//         other.image == image;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         name.hashCode ^
//         desc.hashCode ^
//         price.hashCode ^
//         color.hashCode ^
//         image.hashCode;
//   }
// }
