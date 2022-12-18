import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/product_grid.dart';
import 'package:reserved/providers/product.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/products_provider.dart';

class ProductsOverviewScreen extends StatefulWidget {
  static const routeName = '/productsOverviewScreen';
  List<Product> category;

  ProductsOverviewScreen({super.key, required this.category});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _isInit = true;

  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<ProductsProvider>(context, listen: false)
          .fetchAndSetProducts();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ProductsGrid(
        category: widget.category,
      ),
      backgroundColor: Colors.black,
    );
  }
}
