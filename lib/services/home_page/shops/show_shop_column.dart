import 'package:flutter/material.dart';
import 'package:prices_dart/services/home_page/shops/show_shop.dart';
import 'shop.dart';

class ShowShopInColumn extends StatelessWidget{
  Shop item;
  Shop item1;
  ShowShopInColumn({required this.item,required this.item1});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ShowShop(item: item),
        ShowShop(item: item1),
      ],
    );
  }

}