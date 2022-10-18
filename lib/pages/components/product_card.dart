import 'package:flutter/material.dart';
import 'package:shop_app/costants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 134,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
          Radius.circular(dBorderRadius),
        )),
        child: Column(
          children: [
            Container(
              width: 154,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(dBorderRadius),
              ),
              child: Column(
                children: [
                  Image.asset(
                    image,
                    height: 132,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: dPadding / 4),
                Text(
                  "\$" + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
