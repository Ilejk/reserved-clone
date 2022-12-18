import 'package:flutter/material.dart';
import 'package:reserved/widgets/order_item.dart';
import 'package:reserved/providers/orders.dart' show Orders;
import 'package:provider/provider.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);
  static const routeName = '/orderScreen';

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: Consumer<Orders>(
        builder: (ctx, orderData, child) => ListView.builder(
          itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
          itemCount: orderData.orders.length,
        ),
      ),
    );
  }
}
