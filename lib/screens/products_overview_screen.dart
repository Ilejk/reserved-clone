import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/product_grid.dart';
import 'package:reserved/providers/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const routeName = '/productsOverviewScreen';
  List<Product> category;

  ProductsOverviewScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ProductsGrid(
        category: category,
      ),
      backgroundColor: Colors.black,
    );
  }
}
