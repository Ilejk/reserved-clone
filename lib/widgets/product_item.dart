import 'package:flutter/material.dart';
import 'package:reserved/providers/cart.dart';
import 'package:reserved/providers/product.dart';
import 'package:provider/provider.dart';
import 'package:reserved/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: product.id,
              );
            },
            child: Center(
              child: SizedBox(
                height: 350,
                width: 200,
                child: Image(
                  image: NetworkImage(product.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                product.title,
                softWrap: true,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            IconButton(
              onPressed: () {
                product.toggleFavoriteScreen(product.id);
              },
              icon: Icon(
                product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border_sharp,
                size: 25,
                color: product.isFavorite ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
        // title
        Text(
          '\$${product.price.toString()}',
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.start,
        ),
        // price
      ],
    );
  }
}
