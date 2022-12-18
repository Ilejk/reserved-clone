import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_category_row.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_column_new.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_listview_boy.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_listview_girl.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_listview_man.dart';
import 'package:reserved/widgets/menuScreenWidgets/menu_screen_listview_woman.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);
  static const routeName = '/menuScreen';

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);
  bool _customIcon = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    // ADD SEARCH FUNCTION
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 300,
                  height: 60,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'Find a product',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // ASK FOR ACCESS TO CAMERA AND THEN SCAN THE QR CODE
                  },
                  icon: const Icon(
                    Icons.qr_code_2_rounded,
                    size: 26,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            MenuScreenCategoryRow(pageController: _pageController),
            Expanded(
              child: PageView(
                controller: _pageController,
                pageSnapping: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  MenuScreenColumnNew(),
                  MenuScreenListViewWoman(),
                  MenuScreenListViewMan(),
                  MenuScreenListViewGirl(),
                  MenuScreenListViewBoy(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
