import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Mouse Bluetooth", "119.99", "lib/images/mouse_bluetooth.jpg", Colors.blue],
    ["HAVIT Audifonos", "69.99", "lib/images/havit_audifonos.jpg", Colors.orangeAccent],
    ["MacBook Air", "120.99", "lib/images/mac.jpg", Colors.teal],
    ["Laptop ASUS L510", "100.00", "lib/images/laptopASUS_L510.jpg", Colors.grey],
  ];

  List _cartItems = [];

  List get cartItems => _cartItems;
  List get shopItems => _shopItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  void addProduct(String name, String price, String imagePath, Color color) {
    _shopItems.add([name, price, imagePath, color]);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (var item in _cartItems) {
      totalPrice += double.parse(item[1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
