import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Strawberry Glaze Skin", "19.00", "lib/images/StrawberryGlazeSkin.png", Colors.pink],
    ["Coconut Cloud", "18.00", "lib/images/CoconutCloud.png", Colors.cyan],
    ["Malibu Mango", "19.00", "lib/images/MalibuMango.png", Colors.amber],
    ["Sweet Cherry", "21.00", "lib/images/SweetCherry.png", Colors.red],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
