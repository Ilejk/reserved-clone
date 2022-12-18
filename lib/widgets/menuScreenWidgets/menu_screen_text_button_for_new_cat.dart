import 'package:flutter/material.dart';

class MenuTextButtonForNewCat extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const MenuTextButtonForNewCat(
      {super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
    );
  }
}
