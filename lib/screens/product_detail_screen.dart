import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/cart.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/productDetailScreen';

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProducts =
        Provider.of<ProductsProvider>(context).findById(productId);
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: CircleAvatar(
          backgroundColor: Colors.black54,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black54,
            child: IconButton(
              onPressed: () {
                cart.addItem(
                  loadedProducts.id,
                  loadedProducts.imageUrl,
                  loadedProducts.price,
                  loadedProducts.title,
                );
              },
              icon: const Icon(
                Icons.shopping_basket_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 600,
              child: Image.network(
                loadedProducts.imageUrl,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        loadedProducts.title,
                        softWrap: true,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            letterSpacing: 1.5),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          loadedProducts
                              .toggleFavoriteScreen(loadedProducts.id);
                        });
                      },
                      icon: Icon(
                        loadedProducts.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_sharp,
                        size: 25,
                        color: loadedProducts.isFavorite
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$${loadedProducts.price.toString()}',
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20, letterSpacing: 1.5),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {
                cart.addItem(
                  loadedProducts.id,
                  loadedProducts.imageUrl,
                  loadedProducts.price,
                  loadedProducts.title,
                );
                Navigator.of(context).pop();
              },
              child: const SizedBox(
                width: 300,
                height: 35,
                child: Center(
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text(
                    loadedProducts.description.toString(),
                    style: const TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 1),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
