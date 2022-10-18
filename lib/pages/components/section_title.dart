import 'package:flutter/material.dart';
import 'package:shop_app/costants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);

  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: dPadding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "See All",
                style: TextStyle(color: Colors.black54),
              ))
        ],
      ),
    );
  }
}
