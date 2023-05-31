// ignore_for_file: unnecessary_getters_setters

import 'package:flutter_ecommerce_project/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();
  factory CartModel() => cartModel;

  // catalog fields
  late CatalogModel _catalog;

// collection of ids-store ids of each items
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

// get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

//get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

// add  items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
