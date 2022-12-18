import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/datas/privacy_policy_data_column.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);
  static const routeName = '/privacyPolicyScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const MyBottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.7,
          ),
        ),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: PrivacyPolicyScreenColumn(),
          ),
        ],
      ),
    );
  }
}
