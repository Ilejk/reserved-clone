import 'package:flutter/material.dart';
import 'package:reserved/helpers/page_transition.dart';
import 'package:reserved/providers/cart.dart';
import 'package:reserved/providers/orders.dart';
import 'package:reserved/screens/cart_screen.dart';
import 'package:reserved/screens/main_category_screen.dart';
import 'package:reserved/screens/menu_screen.dart';
import 'package:reserved/screens/more_screen.dart';
import 'package:reserved/providers/products_provider.dart';
import 'package:provider/provider.dart';
import 'package:reserved/screens/more_screen_screens/app_settings_screen.dart';
import 'package:reserved/screens/more_screen_screens/discounts_codes_screen.dart';
import 'package:reserved/screens/more_screen_screens/help_screen.dart';
import 'package:reserved/screens/more_screen_screens/my_account_screen.dart';
import 'package:reserved/screens/more_screen_screens/privacy_policy_screen.dart';
import 'package:reserved/screens/more_screen_screens/regulation_screen.dart';
import 'package:reserved/screens/orders_screen.dart';
import 'package:reserved/screens/product_detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProductsProvider(),
        ),
        ChangeNotifierProvider.value(value: Orders([])),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CustomPageTransitionBuilder(),
              TargetPlatform.iOS: CustomPageTransitionBuilder(),
            },
          ),
        ),
        title: 'Reserved',
        home: const MainCategoryScreen(),
        routes: {
          MainCategoryScreen.routeName: (ctx) => const MainCategoryScreen(),
          MenuScreen.routeName: (ctx) => const MenuScreen(),
          MoreScreen.routeName: (ctx) => const MoreScreen(),
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
          RegulationScreen.routeName: (ctx) => const RegulationScreen(),
          PrivacyPolicyScreen.routeName: (ctx) => const PrivacyPolicyScreen(),
          HelpScreen.routeName: (ctx) => const HelpScreen(),
          AppSettingsScreen.routeName: (ctx) => const AppSettingsScreen(),
          MyAccountDetailScreen.routeName: (ctx) =>
              const MyAccountDetailScreen(),
          DiscountsCodesScreen.routeName: (ctx) => const DiscountsCodesScreen(),
          CartScreen.routeName: (ctx) => const CartScreen(),
          OrderScreen.routeName: (ctx) => const OrderScreen()
        },
      ),
    );
  }
}
