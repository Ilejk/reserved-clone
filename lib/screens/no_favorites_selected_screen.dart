import 'package:flutter/material.dart';

class NoFavoritesScreen extends StatelessWidget {
  const NoFavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'adadada',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                  'https://scontent-waw1-1.xx.fbcdn.net/v/t1.15752-9/316976467_1128887694498673_4885640772076080125_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ae9488&_nc_ohc=GuMF3GIaJZgAX-fv2vz&_nc_ht=scontent-waw1-1.xx&oh=03_AdQAnZ12NYFkGzOY0otSlG5jReZm2swAz79xVCNc7-zZYw&oe=63AAF405'),
            ),
          ],
        ),
      ),
    );
  }
}
