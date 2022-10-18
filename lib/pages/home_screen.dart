import 'package:flutter/material.dart';
import 'package:shop_app/costants.dart';
import 'package:shop_app/pages/components/categories.dart';
import 'package:shop_app/pages/components/new_arrival.dart';
import 'package:shop_app/pages/components/popular.dart';
import 'package:shop_app/pages/components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/menu.png"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/Location.png"),
            SizedBox(width: dPadding / 2),
            Text("15/2 New Texas",
                style: Theme.of(context).textTheme.subtitle2),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/Notification.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(dPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
            ),
            const Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: dPadding),
              child: const SearchForm(),
            ),
            const Categories(),
            const NewArrival(),
            const Popular(),
          ],
        ),
      ),
    );
  }
}
