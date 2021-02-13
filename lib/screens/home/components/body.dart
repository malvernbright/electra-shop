import 'package:electra_shop/constants/constants.dart';
import 'package:electra_shop/models/Product.dart';
import 'package:electra_shop/screens/details/detailSceen.dart';
import 'package:electra_shop/screens/home/components/categories.dart';
import 'package:electra_shop/screens/home/components/itemCard.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Electricals",
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              childAspectRatio: .75,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(product: products[index]),
                ),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
