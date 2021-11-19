import 'package:flutter/material.dart';

import 'product_type.dart';
import 'show_product_type.dart';

class ShowProductTypeInColumn extends StatelessWidget{
  ProductType item;
  ProductType item1;

  ShowProductTypeInColumn({required this.item,required this.item1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ShowProductType(item: item),
        ShowProductType(item: item1),
      ],
    );
  }

}