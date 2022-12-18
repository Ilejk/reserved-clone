import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:reserved/providers/orders.dart' as ord;

class OrderItem extends StatefulWidget {
  final ord.OrderItem order;

  const OrderItem(this.order, {super.key});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height:
          _expanded ? min(widget.order.products.length * 100.0 + 60, 500) : 111,
      child: Card(
        color: Colors.black,
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                '\$${widget.order.amount.toStringAsFixed(2)}',
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                DateFormat.yMMMd().format(widget.order.dateTime),
                style: const TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    _expanded = !_expanded;
                  });
                },
                icon: Icon(
                  _expanded ? Icons.expand_less : Icons.expand_more,
                  color: Colors.white,
                ),
              ),
            ),
            // if (_expanded)
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: _expanded
                        ? min(widget.order.products.length * 100.0 + 60, 500)
                        : 0,
                    child: ListView(
                      children: widget.order.products
                          .map(
                            (prod) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: 40,
                                      child: Image.network(prod.imageUrl),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        prod.title,
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      '${prod.quantity}x \$${prod.price}',
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                                const Divider()
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
