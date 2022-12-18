import 'package:flutter/material.dart';
import 'package:reserved/widgets/mainScreenWidgets/main_screen_category_text_button.dart';

class MainScreenCategoryRow extends StatelessWidget {
  const MainScreenCategoryRow({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MainScreenCategoryTextButton(
          pageController: _pageController,
          pageIndex: 0,
          title: 'WOMAN',
        ),
        MainScreenCategoryTextButton(
          pageController: _pageController,
          pageIndex: 1,
          title: 'MAN',
        ),
        MainScreenCategoryTextButton(
          pageController: _pageController,
          pageIndex: 2,
          title: 'GIRL',
        ),
        MainScreenCategoryTextButton(
          pageController: _pageController,
          pageIndex: 3,
          title: 'BOY',
        ),
      ],
    );
  }
}
