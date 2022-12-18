import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/my_divider.dart';

class AppSettingsScreen extends StatelessWidget {
  const AppSettingsScreen({Key? key}) : super(key: key);
  static const routeName = '/appSettingsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: const AppSettingsScreenListTileColumn(),
    );
  }
}

class AppSettingsScreenListTileColumn extends StatelessWidget {
  const AppSettingsScreenListTileColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 5),
          child: Text(
            'Choose your region',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const MyDividerMoreScreen(),
        ListTile(
          title: const Text(
            'DEUTSCHLAND / GERMANY',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
            size: 25,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        const MyDividerMoreScreen(),
        ListTile(
          title: const Text(
            'POLSKA / POLAND',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
            size: 25,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        const MyDividerMoreScreen(),
        ListTile(
          title: const Text(
            'ROMANIA / ROMANIA',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
            size: 25,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        const MyDividerMoreScreen(),
      ],
    );
  }
}
