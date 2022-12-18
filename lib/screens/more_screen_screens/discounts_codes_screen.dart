import 'package:flutter/material.dart';
import 'package:reserved/widgets/bottom_navigation_bar.dart';
import 'package:reserved/widgets/my_divider.dart';

class DiscountsCodesScreen extends StatefulWidget {
  const DiscountsCodesScreen({Key? key}) : super(key: key);
  static const routeName = '/discountsCodesScreen';

  @override
  State<DiscountsCodesScreen> createState() => _DiscountsCodesScreenState();
}

class _DiscountsCodesScreenState extends State<DiscountsCodesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const MyBottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Discounts Codes',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '-10% ONLINE AND IN OUR SHOPS',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.copy,
                            color: Colors.white,
                            size: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'NDKA7BATW5AGQE112',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(
                      width: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: showBottomScreenBar,
                child: const Text(
                  'SHOW THE CODE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ),
            ],
          ),
          const MyDividerMoreScreen(),
        ],
      ),
    );
  }

  showBottomScreenBar() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return FractionallySizedBox(
            heightFactor: 0.30,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  const Text(
                    'Discount Codes',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Show this Bar code to the chashier in order to get a discount.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 500,
                    height: 100,
                    child: Image.network(
                        'https://scontent-waw1-1.xx.fbcdn.net/v/t1.15752-9/316716589_2379161365583132_3549183036621120348_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_ohc=_7Q1oVXtTZ8AX8Dhx_C&_nc_ht=scontent-waw1-1.xx&oh=03_AdTGwPolAH_1wbk_dpNQTePaWci6Yd5lkXMrnUwo6iQHqA&oe=63AB198F'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
