import 'package:electra_shop/constants/constants.dart';
import 'package:electra_shop/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // leading: IconButton(
      //   icon: Icon(
      //     Icons.arrow_back,
      //     color: kTextColor,
      //   ),
      //   onPressed: () {},
      // ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2,)
      ],
    );
  }
}
