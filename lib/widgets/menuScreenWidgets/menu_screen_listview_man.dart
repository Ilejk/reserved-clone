import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:reserved/screens/products_overview_screen.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_expansion_widget.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_text_button_expanded.dart';
import 'package:reserved/widgets/my_divider.dart';

class MenuScreenListViewMan extends StatelessWidget {
  const MenuScreenListViewMan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData;
    return ListView(
      children: [
        MenuScreenExpansionWidget(
          mainTitle: 'CLOTHES',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.basicCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Basic',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.coatCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Coats and Jackets',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.sweaterCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Sweaters ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.suitCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Suits ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shirtCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Shirts ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.tShirtCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'T-shirts ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.poloCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Polo ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.hoodieCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Hoodies ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pantsCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Pants ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.jeansCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Jeans ',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
        MenuScreenExpansionWidget(
          mainTitle: 'UNDERWEAR AND ACCESSORIES',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pjCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'PJs',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.underwearCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Underwear',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.sockCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Socks ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shoesCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Shoes ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                // ADD HATS AND SCARVES CAT
              },
              subTitle: 'Hats,Scarves ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.beltCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Belts ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.glassesCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Glasses ',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
        MenuScreenExpansionWidget(
          mainTitle: 'COLLECTION',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.reDesignManCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Re.design',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.unisexCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Unisex',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.denimCategoryMan,
                    ),
                  ),
                );
              },
              subTitle: 'Denim ',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
      ],
    );
  }
}
