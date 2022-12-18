import 'package:flutter/material.dart';
import 'package:reserved/providers/cart.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final int quantity;
  final String productId;

  const CartItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.id,
    required this.price,
    required this.productId,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Are you sure'),
            content: const Text('Item will be deleted'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop(false);
                },
                child: const Text(
                  'NO',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop(true);
                },
                child: const Text(
                  'YES',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeCartItem(productId);
      },
      direction: DismissDirection.endToStart,
      key: ValueKey(id),
      background: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.red,
          alignment: Alignment.centerRight,
          child: const Icon(
            Icons.delete,
            color: Colors.white,
            size: 40.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black,
          child: Row(
            children: [
              SizedBox(
                height: 200,
                width: 80,
                child: Image.network(imageUrl),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Product ID',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          productId,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Quantity',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          '$quantity',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$${price * quantity}',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
