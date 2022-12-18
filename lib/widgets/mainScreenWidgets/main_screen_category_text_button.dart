import 'package:flutter/material.dart';

class MainScreenCategoryTextButton extends StatelessWidget {
  final String title;
  final int pageIndex;
  final PageController pageController;

  const MainScreenCategoryTextButton(
      {super.key,
      required this.title,
      required this.pageIndex,
      required this.pageController});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        pageController.animateToPage(pageIndex,
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      },
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Colors.white,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
