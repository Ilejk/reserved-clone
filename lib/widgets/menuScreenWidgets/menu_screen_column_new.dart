import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:reserved/screens/products_overview_screen.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_text_button_for_new_cat.dart';
import 'package:reserved/widgets/my_divider.dart';

class MenuScreenColumnNew extends StatelessWidget {
  const MenuScreenColumnNew({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuTextButtonForNewCat(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newWomanCategory,
                ),
              ),
            );
          },
          title: 'WOMAN',
        ),
        const MyDividerMoreScreen(),
        MenuTextButtonForNewCat(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newManCategory,
                ),
              ),
            );
          },
          title: 'MAN',
        ),
        const MyDividerMoreScreen(),
        MenuTextButtonForNewCat(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newGirlCategory,
                ),
              ),
            );
          },
          title: 'GIRL',
        ),
        const MyDividerMoreScreen(),
        MenuTextButtonForNewCat(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsOverviewScreen(
                  category: products.newBoyCategory,
                ),
              ),
            );
          },
          title: 'BOY',
        ),
        const MyDividerMoreScreen(),
      ],
    );
  }
}
