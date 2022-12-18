import 'package:flutter/material.dart';

class SpecialCategoryProduct extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final VoidCallback onPressed;

  const SpecialCategoryProduct(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 500,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.3, color: Colors.black),
                    ),
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          subtitle,
                          softWrap: false,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
