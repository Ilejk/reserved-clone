import 'package:flutter/material.dart';
import 'package:reserved/screens/more_screen_screens/app_settings_screen.dart';
import 'package:reserved/screens/more_screen_screens/discounts_codes_screen.dart';
import 'package:reserved/screens/more_screen_screens/help_screen.dart';
import 'package:reserved/screens/more_screen_screens/my_account_screen.dart';
import 'package:reserved/screens/more_screen_screens/privacy_policy_screen.dart';
import 'package:reserved/screens/more_screen_screens/regulation_screen.dart';
import 'package:reserved/screens/orders_screen.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/my_divider.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);
  static const routeName = '/moreScreen';

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'More',
              textAlign: TextAlign.start,
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.account_circle_outlined,
            onPressed: () {
              //CHECK IF THE USER IS LOGGED IN IF NOT GOT TO AUTH SCREEN IF YES
              Navigator.of(context).pushNamed(MyAccountDetailScreen.routeName);
            },
            title: 'MY ACCOUNT',
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.percent,
            onPressed: () {
              // CHECK IF USER IS LOGGED IN IF NOT GO TO AUTH SCREEN IF YES
              Navigator.of(context).pushNamed(DiscountsCodesScreen.routeName);
            },
            title: 'DISCOUNTS CODES',
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.history,
            onPressed: () {
              // CHECK IF USER IS SIGNED IN IF YES GO TO ORDER HISTORY IF NOT GO TO AUTH SCREEN
              Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);
            },
            title: 'ORDER HISTORY',
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.pin_drop_outlined,
            onPressed: () {
              // ASK THE USER FOR PERMISSION TO GET HIS LOCATION
              // THEN FIND THE CLOSEST RESERVED SHOP AND PIN IT ON  THE MAP
              // DONT KNOW IF IMMA DO IT???
            },
            title: 'FIND MY RESERVED SHOP',
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.star_border,
            onPressed: showLikeMenu,
            title: 'RATE THE APP',
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.settings,
            onPressed: () {
              Navigator.of(context).pushNamed(AppSettingsScreen.routeName);
            },
            title: 'APP SETTINGS',
          ),
          const MyDividerMoreScreen(),
          const SizedBox(
            height: 35,
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.help_outline_outlined,
            onPressed: () {
              Navigator.of(context).pushNamed(HelpScreen.routeName);
            },
            title: 'HELP',
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.work_outline,
            onPressed: () {
              Navigator.of(context).pushNamed(PrivacyPolicyScreen.routeName);
            },
            title: 'PRIVACY POLICY',
          ),
          const MyDividerMoreScreen(),
          MorePageRowLabel(
            icon: Icons.safety_check_outlined,
            onPressed: () {
              Navigator.of(context).pushNamed(RegulationScreen.routeName);
            },
            title: 'REGULATIONS',
          ),
          const MyDividerMoreScreen(),
        ],
      ),
    );
  }

  showLikeMenu() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return FractionallySizedBox(
            heightFactor: 0.25,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 15, bottom: 15, left: 10, right: 5),
                    child: Text(
                      'Rate Reserved App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const MyDividerMoreScreen(),
                  ListTile(
                    leading: const Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    title: const Text(
                      'I LIKE IT !',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const MyDividerMoreScreen(),
                  ListTile(
                    leading: const Icon(
                      Icons.thumb_down_alt_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    title: const Text(
                      'I DON\'T LIKE IT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const MyDividerMoreScreen(),
                ],
              ),
            ),
          );
        });
  }
}

class MorePageRowLabel extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String title;

  const MorePageRowLabel(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10.0,
        ),
        Icon(
          icon,
          size: 20,
          color: Colors.white,
        ),
        const SizedBox(
          width: 25.0,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: const TextStyle(
              letterSpacing: 2,
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
