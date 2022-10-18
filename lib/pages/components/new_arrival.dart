import 'package:flutter/material.dart';
import 'package:shop_app/costants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/pages/components/product_card.dart';
import 'package:shop_app/pages/components/section_title.dart';
import 'package:shop_app/pages/details/details_screen.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'New Arrival',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: dPadding),
                      child: ProductCard(
                        bgColor: Color(0xFFEFEFF2),
                        image: demo_product[index].image,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreen(product: demo_product[index]),
                              ));
                        },
                        price: demo_product[index].price,
                        title: demo_product[index].title,
                      ),
                    )),
          ),
        ),
      ],
    );
  }
}
