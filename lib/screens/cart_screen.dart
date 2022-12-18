import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/cart.dart' show Cart;
import 'package:reserved/providers/orders.dart';
import 'package:reserved/screens/orders_screen.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/cart_item.dart';
import 'package:reserved/widgets/my_divider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const routeName = '/cartScreen';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, i) => CartItem(
                imageUrl: cart.items.values.toList()[i].imageUrl,
                title: cart.items.values.toList()[i].title,
                id: cart.items.values.toList()[i].id,
                price: cart.items.values.toList()[i].price,
                productId: cart.items.keys.toList()[i],
                quantity: cart.items.values.toList()[i].quantity,
              ),
              itemCount: cart.items.length,
            ),
          ),
          SizedBox(
            height: 300,
            child: Column(
              children: [
                const MyDividerMoreScreen(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'TOTAL : ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$${cart.totalAmount.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                    width: 200,
                    height: 50,
                    child: OrderButton(
                      cart: cart,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OrderButton extends StatefulWidget {
  const OrderButton({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: (widget.cart.totalAmount <= 0 || _isLoading == true)
          ? null
          : () async {
              setState(() {
                _isLoading = true;
              });
              await Provider.of<Orders>(context, listen: false).addOrder(
                widget.cart.items.values.toList(),
                widget.cart.totalAmount,
                widget.cart.getImageUrl,
                widget.cart.getId,
              );
              setState(() {
                _isLoading = false;
              });
              widget.cart.clear();
              print('tapped');
              Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);
            },
      child: _isLoading
          ? const CircularProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.black,
            )
          : const Text(
              'ORDER',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
    );
  }
}
