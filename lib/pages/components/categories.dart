import 'package:flutter/material.dart';
import 'package:shop_app/costants.dart';
import 'package:shop_app/models/Category.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        demo_categories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: dPadding),
          child: CategoryCard(
            icon: demo_categories[index].icon,
            title: demo_categories[index].title,
            press: () {},
          ),
        ),
      )),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(dBorderRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: dPadding / 4, vertical: dPadding / 2),
          child: Column(
            children: [
              Image.asset(icon),
              SizedBox(height: dPadding / 2),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ));
  }
}
