import 'package:flutter/material.dart';
import 'package:prices_dart/services/home_page/product_types/show_product_type_detail.dart';

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
        GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowProductTypeDetail(name: item.name,)));
            },
            child: ShowProductType(item: item)
        ),

        GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowProductTypeDetail(name: item1.name,)));
            },
            child: ShowProductType(item: item1)
        ),
      ],
    );
  }

}