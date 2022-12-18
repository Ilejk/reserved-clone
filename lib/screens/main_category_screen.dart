import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/mainScreenWidgets/main_screen_category_row.dart';
import 'package:reserved/widgets/categories_listviews.dart';

class MainCategoryScreen extends StatefulWidget {
  const MainCategoryScreen({Key? key}) : super(key: key);
  static const routeName = '/mainCategoryScreen';

  @override
  State<MainCategoryScreen> createState() => _MainCategoryScreenState();
}

class _MainCategoryScreenState extends State<MainCategoryScreen> {
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, left: 15, bottom: 17),
                    child: Text(
                      'RESERVED',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, right: 15, bottom: 17),
                  child: IconButton(
                    onPressed: () {
                      // GO TO PAGE WHERE U CAN SCAN A QR CODE
                    },
                    icon: const Icon(
                      Icons.qr_code_2_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            MainScreenCategoryRow(pageController: _pageController),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                pageSnapping: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  WomanCategoryListview(),
                  ManCategoryListview(),
                  GirlCategoryListview(),
                  BoyCategoryListview(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
