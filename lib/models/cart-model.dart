import 'package:farmexpert/Tabs/Tab1.dart';
import 'package:flutter/foundation.dart';

class CartModel with ChangeNotifier {
  Map<Item, int> _cartItems = Map();
  Map<Item, int> get cartItems => _cartItems;

  CartModel();

  void addItem(Item item) {
    if (item == null) {
      print("Cannot add empty item");
    } else {
      if (_cartItems.keys.contains(item)) {
        _cartItems[item] += 1;
      } else {
        _cartItems[item] = 1;
      }
    }
    notifyListeners();
  }

  void decrementOrder(Item item) {
    if (_cartItems.keys.contains(item)) {
      _cartItems[item] -= 1;
      if (_cartItems[item] == 0) {
        _cartItems.remove(item);
      }
    }
    notifyListeners();
  }

  void deleteItem(Item item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  double computeTotal() {
    double totalSum = 0;
    var keys = _cartItems.keys.toList();
    for (var key in keys) {
      var itemPrice = _cartItems[key] * key.price;
      totalSum += itemPrice;
    }
    return totalSum;
  }
}
