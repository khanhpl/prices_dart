import 'package:flutter/material.dart';
import 'package:prices_dart/services/home_page/shops/show_shop.dart';
import 'shop.dart';

class ShowShopInRow extends StatelessWidget {
  Shop item;
  Shop item1;

  ShowShopInRow({required this.item, required this.item1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ShowShop1(item: item),
        ShowShop1(item: item1),
      ],
    );
  }
}