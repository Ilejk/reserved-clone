import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:reserved/screens/products_overview_screen.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_expansion_widget.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_text_button_expanded.dart';
import 'package:reserved/widgets/my_divider.dart';

class MenuScreenListViewWoman extends StatelessWidget {
  const MenuScreenListViewWoman({
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
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.partyWomanCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Party',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.coatCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Jackets and Coats',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.sweaterCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Sweaters',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.dressCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Dresses',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.blouseCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Blouses',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.tShirtCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'T-shirts',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.topCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Tops',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.hoodieCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Hoodies',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.jeansCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Jeans',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pantsCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Pants',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shortsCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Shorts',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.skirtCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Skirts',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.suitCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Suits',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
        MenuScreenExpansionWidget(
          mainTitle: 'SHOES AND ACCESSORIES',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shoesCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Shoes',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.bagCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Bags and Backpacks',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.hatCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Hats and Scarves ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.beltCategoryWoman,
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
                      category: products.glassesCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Glasses ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.walletCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Wallets ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.jewelleryCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Jewellery ',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
        MenuScreenExpansionWidget(
          mainTitle: 'UNDERWEAR',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.braCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Bras',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.thongCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Thongs',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.bodyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Body ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pjCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'PJs ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.sockCategoryWoman,
                    ),
                  ),
                );
              },
              subTitle: 'Socks ',
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
                      category: products.reDesignWomanCategory,
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
                      category: products.blancaCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Blanca miro x reserved',
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
              subTitle: 'Unisex ',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
      ],
    );
  }
}
