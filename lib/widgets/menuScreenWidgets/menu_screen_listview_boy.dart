import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:reserved/screens/products_overview_screen.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_expansion_widget.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_text_button_expanded.dart';
import 'package:reserved/widgets/my_divider.dart';

class MenuScreenListViewBoy extends StatelessWidget {
  const MenuScreenListViewBoy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData;
    return ListView(
      children: [
        MenuScreenExpansionWidget(
          mainTitle: 'CHECK IT OUT',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.seeAllBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'BestSellers',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
        MenuScreenExpansionWidget(
          mainTitle: 'BOY 5-13 YEARS OLD',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.jacketsBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Jackets',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.sweatersCategoryBoy,
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
                      category: products.hoodieCategoryBoy,
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
                      category: products.tShirtCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'T-Shirts ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shirtCategoryBoy,
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
                      category: products.pantsCategoryBoy,
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
                      category: products.jeansCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'Jeans ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.suitBoyCategory,
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
                      category: products.shoesBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Shoes ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.hatsCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'Hats and Scarves',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.bagsCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'Bags',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pjCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'Pjs',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.socksCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'Socks',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
        MenuScreenExpansionWidget(
          mainTitle: 'BOY 1-5 YEARS OLD',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.jacketsBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Jackets',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.suitBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Suits',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.sweatersCategoryBoy,
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
                      category: products.tShirtCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'T-Shirts ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shirtCategoryBoy,
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
                      category: products.pantsCategoryBoy,
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
                      category: products.jeansCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'Jeans ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shoesBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Shoes ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.hatsCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'Hats and Scarves',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pjCategoryBoy,
                    ),
                  ),
                );
              },
              subTitle: 'Pjs',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
        MenuScreenExpansionWidget(
          mainTitle: 'NEWBORN 0-12 MONTHS',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.newbornBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'See all',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.jacketsBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Jackets',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pantsCategoryBoy,
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
                      category: products.bodyBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Body',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shoesBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Shoes',
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
                      category: products.winterIsComingBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Winter Is Coming',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.newbornBoyCategory,
                    ),
                  ),
                );
              },
              subTitle: 'NewBorn',
            ),
            const MyDividerMoreScreen(),
          ],
        ),
        const MyDividerMoreScreen(),
      ],
    );
  }
}
