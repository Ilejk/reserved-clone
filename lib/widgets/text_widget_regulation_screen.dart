import 'package:flutter/material.dart';

class TextWidgetRegulationScreen extends StatelessWidget {
  final String text;

  const TextWidgetRegulationScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
