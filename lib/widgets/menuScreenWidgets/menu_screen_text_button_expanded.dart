import 'package:flutter/material.dart';

class MenuScreenTextButtonExpanded extends StatelessWidget {
  final VoidCallback onPressed;
  final String subTitle;

  const MenuScreenTextButtonExpanded(
      {super.key, required this.onPressed, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 30),
        child: Text(
          subTitle,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
