import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:reserved/screens/cart_screen.dart';
import 'package:reserved/screens/main_category_screen.dart';
import 'package:reserved/screens/menu_screen.dart';
import 'package:reserved/screens/more_screen.dart';
import 'package:reserved/screens/no_favorites_selected_screen.dart';
import 'package:reserved/screens/products_overview_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  Color _iconColor = Colors.grey;

  void changeIconColor() {
    setState(() {
      _iconColor = _iconColor == Colors.grey ? Colors.white : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigationBarIconButton(
            myColor: _iconColor,
            onPressed: () {
              changeIconColor();
              Navigator.of(context)
                  .pushReplacementNamed(MainCategoryScreen.routeName);
            },
            myIcon: Icons.home_outlined,
          ),
          BottomNavigationBarIconButton(
              myColor: _iconColor,
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(MenuScreen.routeName);
              },
              myIcon: Icons.menu),
          BottomNavigationBarIconButton(
            myColor: _iconColor,
            onPressed: () {
              // IF THE BASKET IS EMPTY SHOW A SCREEN 'YOUR BASKET IS EMPTY' AND A BUTTON 'GO TO THE SHOP'
              Navigator.of(context).pushReplacementNamed(CartScreen.routeName);
            },
            myIcon: Icons.shopping_basket_outlined,
          ),
          BottomNavigationBarIconButton(
              myColor: _iconColor,
              onPressed: () {
                // IF USER IS NOT LOGGED IN GO TO LOG IN SCREEN IF HE IS LOGGED IN GO TO THE FAVORITES SCREEN
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ProductsOverviewScreen(
                      category: products.favoriteItems,
                    ),
                  ),
                );
              },
              myIcon: Icons.favorite_border_sharp),
          BottomNavigationBarIconButton(
              myColor: _iconColor,
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(MoreScreen.routeName);
              },
              myIcon: Icons.more_horiz_rounded),
        ],
      ),
    );
  }
}

class BottomNavigationBarIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData myIcon;
  final Color myColor;

  const BottomNavigationBarIconButton({
    super.key,
    required this.onPressed,
    required this.myIcon,
    required this.myColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        myIcon,
        size: 32,
        color: myColor,
      ),
    );
  }
}
