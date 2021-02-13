import 'package:electra_shop/constants/constants.dart';
import 'package:electra_shop/models/Product.dart';
import 'package:electra_shop/screens/details/components/AddToCart.dart';
import 'package:electra_shop/screens/details/components/ColorAndSize.dart';
import 'package:electra_shop/screens/details/components/CounterWithFavButton.dart';
import 'package:electra_shop/screens/details/components/ProductDescription.dart';
import 'package:electra_shop/screens/details/components/ProductTitleWithImage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsBody extends StatelessWidget {
  Product product;

  DetailsBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * .3),
                  padding: EdgeInsets.only(
                      top: size.height * .12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  height: 650,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      ProductDescription(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavButton(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
