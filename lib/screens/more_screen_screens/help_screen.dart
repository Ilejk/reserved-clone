import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/my_divider.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);
  static const routeName = '/helpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const MyBottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: const HelpScreenListTileColumn(),
    );
  }
}

class HelpScreenListTileColumn extends StatelessWidget {
  const HelpScreenListTileColumn({
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
            'How can we help you?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.bookmark_border,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'Popular Subjects',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.indeterminate_check_box,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'Orders',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.change_circle_outlined,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'Refunds and Complaints',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.delivery_dining,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'Delivery',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.account_balance_wallet_outlined,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'Payment',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.bookmarks_outlined,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'Products',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.location_on,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'Stationary Shops',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.person_outline_outlined,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'My Account',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
        ListTileHelpScreen(
          leading: Icons.question_mark_sharp,
          trailing: Icons.arrow_forward_ios_sharp,
          title: 'Other',
          onPressed: () {},
        ),
        const MyDividerMoreScreen(),
      ],
    );
  }
}

class ListTileHelpScreen extends StatelessWidget {
  final String title;
  final IconData leading;
  final IconData trailing;
  final VoidCallback onPressed;

  const ListTileHelpScreen(
      {super.key,
      required this.title,
      required this.leading,
      required this.trailing,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        color: Colors.white,
        child: Icon(
          leading,
          size: 25,
          color: Colors.black,
        ),
      ),
      trailing: Icon(
        trailing,
        size: 20,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      onTap: onPressed,
    );
  }
}
