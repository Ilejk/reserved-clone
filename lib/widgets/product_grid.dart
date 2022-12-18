import 'package:flutter/material.dart';
import 'package:reserved/providers/product.dart';
import 'package:reserved/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  List<Product> category;

  ProductsGrid({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final products = category;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6 / 1,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: const ProductItem(),
      ),
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
    );
  }
}
