import 'package:flutter/material.dart';
import 'package:reserved/providers/cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;
  final String imageUrl;

  OrderItem({
    required this.dateTime,
    required this.id,
    required this.products,
    required this.amount,
    required this.imageUrl,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _order = [];

  Orders(this._order);

  List<OrderItem> get orders {
    return [..._order];
  }

  addOrder(
      List<CartItem> cartProducts, double total, String imageUrl, String id) {
    final timestamp = DateTime.now();
    _order.insert(
      0,
      OrderItem(
        dateTime: timestamp,
        id: id,
        products: cartProducts,
        amount: total,
        imageUrl: imageUrl,
      ),
    );
    notifyListeners();
  }
}
