import 'package:farmexpert/Tabs/Tab1.dart';
import 'package:flutter/foundation.dart';

class CartModel with ChangeNotifier {
  Map<Item, int> _cartItems = Map();
  Map<Item, int> get cartItems => _cartItems;

  CartModel();

  void addItem(Item item) {
    final itemCount = _cartItems[item];
    _cartItems[item] = (itemCount ?? 0) + 1;
    notifyListeners();
  }

  void decrementOrder(Item item) {
    if (_cartItems.containsKey(item)) {
      final itemCount = _cartItems[item];
      if (itemCount == 0) {
        _cartItems.remove(item);
      } else {
        _cartItems[item] = (itemCount ?? 0) - 1;
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

    _cartItems.entries.forEach((entry) {
      final item = entry.key;
      final itemCount = entry.value;

      final itemsTotals = item.price * itemCount;
      totalSum += itemsTotals;
    });
    return totalSum;
  }
}
