import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'product_type.dart';

class ShowProductType extends StatelessWidget{
  ProductType item;
  ShowProductType({required this.item});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5.0),
      padding:EdgeInsets.all(5.0),
      height: size.height * 0.12,
      width:size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height:size.height * 0.05,
            width:size.width * 0.1,
            decoration:BoxDecoration(
              image:DecorationImage(
                image:AssetImage(item.image),
                fit:BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 5.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(item.name,style: TextStyle(color: Colors.black,fontSize: 11.0),),
              Text('Hoàn tiền đến '+item.percent+'%',style: TextStyle(color: Colors.black,fontSize: 11.0,fontWeight: FontWeight.bold),)
            ],
          ),
          Spacer(),
          LikeButton(likeBuilder:(bool isLiked){
            return Icon(
              isLiked?Icons.favorite:Icons.favorite_border,
              color: isLiked?Colors.red:Colors.black26,
            );
          },),
         ]
    ),
    );
  }

}

class ShowProductType1 extends StatelessWidget{
  ProductType item;
  ShowProductType1({required this.item});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5.0),
      padding:EdgeInsets.all(5.0),
      height: size.height * 0.12,
      width:size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height:size.height * 0.05,
              width:size.width * 0.1,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage(item.image),
                  fit:BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width:5.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(item.name,style: TextStyle(color: Colors.black,fontSize: 11.0),),
                Text('Hoàn tiền đến '+item.percent+'%',style: TextStyle(color: Colors.black,fontSize: 11.0,fontWeight: FontWeight.bold),)
              ],
            ),
            Spacer(),
            LikeButton(likeBuilder:(bool isLiked){
              return Icon(
                isLiked?Icons.favorite:Icons.favorite_border,
                color: isLiked?Colors.red:Colors.black26,
              );
            },),
          ]
      ),
    );
  }

}