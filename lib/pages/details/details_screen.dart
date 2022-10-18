import 'package:flutter/material.dart';
import 'package:shop_app/costants.dart';
import 'package:shop_app/models/Product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/icons/Heart.png",
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              product.image,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: Container(
            padding:
                EdgeInsets.fromLTRB(dPadding, dPadding * 2, dPadding, dPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(dBorderRadius * 3),
                topRight: Radius.circular(dBorderRadius * 3),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Text(
                      "\$" + product.price.toString(),
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: dPadding),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                ),
                Text(
                  "Colors",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: dPadding / 2),
                Row(
                  children: [
                    ColorDot(
                      color: Color(0xFFBEE8EA),
                      isActive: false,
                      press: () {},
                    ),
                    ColorDot(
                      color: Color(0xFF141B4A),
                      isActive: true,
                      press: () {},
                    ),
                    ColorDot(
                      color: Color(0xFFF4E5C3),
                      isActive: false,
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: dPadding * 2,
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: StadiumBorder()),
                      onPressed: () {},
                      child: Text("Add to cart"),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 26,
        padding: EdgeInsets.all(dPadding / 5),
        decoration: BoxDecoration(
          border:
              Border.all(color: isActive ? primaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
