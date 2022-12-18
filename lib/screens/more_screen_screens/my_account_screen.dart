import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/my_divider.dart';

class MyAccountDetailScreen extends StatelessWidget {
  const MyAccountDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/myAccountScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: const Text(
          'My Account',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyDividerMoreScreen(),
          ListTile(
            onTap: () {
              // SHOW PERSONAL DATA SCREEN WITH PROVIDED NAME SURNAME @ADDRESS AND PASSWORD??
            },
            title: const Text(
              'PERSONAL DATA',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const MyDividerMoreScreen(),
          ListTile(
            onTap: () {
              // SHOW PROVIDED ADDRESSES OR JUST FUCK IT
            },
            title: const Text(
              'YOUR ADDRESSES',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const MyDividerMoreScreen(),
          ListTile(
            onTap: () {
              // ADD A FUNCTION OF CHANGING UR PASSWORD OR JUST FUCK IT
            },
            title: const Text(
              'CHANGE YOUR PASSWORD',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const MyDividerMoreScreen(),
          const Expanded(
            child: SizedBox(),
          ),
          const MyDividerMoreScreen(),
          ListTile(
            onTap: () {
              // ADD LOG OUT FUNCTION
            },
            title: const Text(
              'LOG OUT',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
