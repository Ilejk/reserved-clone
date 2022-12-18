import 'package:flutter/material.dart';

class MenuScreenExpansionWidget extends StatelessWidget {
  final String mainTitle;
  final List<Widget> children;

  const MenuScreenExpansionWidget(
      {super.key, required this.children, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return ExpansionTile(
      title: Text(
        mainTitle,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
      ),
      iconColor: Colors.grey,
      collapsedIconColor: Colors.grey,
      children: [
        Container(
          height: deviceSize.height,
          width: deviceSize.width,
          alignment: Alignment.centerLeft,
          child: ListView(
            children: children,
          ),
        ),
      ],
    );
  }
}
