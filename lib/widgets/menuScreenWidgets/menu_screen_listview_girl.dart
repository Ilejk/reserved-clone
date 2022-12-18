import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:reserved/screens/products_overview_screen.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_expansion_widget.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_text_button_expanded.dart';
import 'package:reserved/widgets/my_divider.dart';

class MenuScreenListViewGirl extends StatelessWidget {
  const MenuScreenListViewGirl({
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
                      category: products.pantsCategoryGirl,
                    ),
                  ),
                );
              },
              subTitle: 'Trousers',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.seeAllGirlCategory,
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
          mainTitle: 'GIRL 5-13 YEARS OLD',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.jeansCategoryGirl,
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
                      category: products.dressesGirlCategory,
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
                      category: products.sweatersCategoryGirl,
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
                      category: products.hoodieCategoryGirl,
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
                      category: products.tShirtCategoryGirl,
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
                      category: products.blousesCategoryGirl,
                    ),
                  ),
                );
              },
              subTitle: 'Blouses ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pantsCategoryGirl,
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
                      category: products.jeansCategoryGirl,
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
                      category: products.skirtGirlCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Skirts ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shoesGirlCategory,
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
                      category: products.hatsCategoryGirl,
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
                      category: products.bagsCategoryGirl,
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
                      category: products.pjCategoryGirl,
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
                      category: products.socksCategoryGirl,
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
          mainTitle: 'GIRL 1-5 YEARS OLD',
          children: [
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.jacketsGirlCategory,
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
                      category: products.dressesGirlCategory,
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
                      category: products.sweatersCategoryGirl,
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
                      category: products.tShirtCategoryGirl,
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
                      category: products.blousesCategoryGirl,
                    ),
                  ),
                );
              },
              subTitle: 'Blouses ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.pantsCategoryGirl,
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
                      category: products.jeansCategoryGirl,
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
                      category: products.skirtGirlCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Skirts ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.shoesGirlCategory,
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
                      category: products.hatsCategoryGirl,
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
                      category: products.pjCategoryGirl,
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
                      category: products.newbornGirlCategory,
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
                      category: products.jacketsGirlCategory,
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
                      category: products.dressesGirlCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Dresses ',
            ),
            const MyDividerMoreScreen(),
            MenuScreenTextButtonExpanded(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.bodyGirlCategory,
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
                      category: products.shoesGirlCategory,
                    ),
                  ),
                );
              },
              subTitle: 'Shoes ',
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
                      category: products.winterIsComingGirlCategory,
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
                      category: products.newbornGirlCategory,
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
