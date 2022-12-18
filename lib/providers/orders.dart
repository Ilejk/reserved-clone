import 'package:flutter/material.dart';
import 'package:reserved/providers/cart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

  Future<void> fetchAndSetProducts() async {
    final timestamp = DateTime.now();
    final url = Uri.parse(
        'https://reserved-clone-f8119-default-rtdb.europe-west1.firebasedatabase.app/orders.json');
    try {
      final response = await http.get(url);
      print(json.decode(response.body));
      final Map<String, dynamic>? extractedData = jsonDecode(response.body);
      final List<OrderItem> loadedOrders = [];
      if (extractedData == null) {
        return;
      }
      extractedData.forEach((orderId, orderData) {
        loadedOrders.add(
          OrderItem(
            dateTime: DateTime.parse(
              orderData['dateTime'],
            ),
            id: orderId,
            products: (orderData['products'] as List<dynamic>)
                .map(
                  (item) => CartItem(
                    id: item['id'],
                    title: item['title'],
                    quantity: item['quantity'],
                    price: item['price'],
                    imageUrl: item['imageUrl'],
                  ),
                )
                .toList(),
            amount: orderData['amount'],
            imageUrl: orderData['imageUrl'],
          ),
        );
      });
      _order = loadedOrders.reversed.toList();
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

  Future<void> addOrder(List<CartItem> cartProducts, double total,
      String imageUrl, String id) async {
    final timestamp = DateTime.now();
    final url = Uri.parse(
        'https://reserved-clone-f8119-default-rtdb.europe-west1.firebasedatabase.app/orders.json');
    final response = await http.post(url,
        body: json.encode({
          'amount': total,
          'dateTime': timestamp.toIso8601String(),
          'imageUrl': imageUrl,
          'products': cartProducts
              .map((cp) => {
                    'id': cp.id,
                    'title': cp.title,
                    'quantity': cp.quantity,
                    'price': cp.price,
                    'imageUrl': cp.imageUrl,
                  })
              .toList(),
        }));

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
