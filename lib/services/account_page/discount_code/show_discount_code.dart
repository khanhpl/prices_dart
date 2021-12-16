import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:prices_dart/constants.dart' as Constant;
import 'package:prices_dart/services/account_page/discount_code/show_discount_code_detail.dart';

import 'discount_code.dart';

class ShowDiscountCode extends StatelessWidget{
  DiscountCode item;
  ShowDiscountCode({required this.item});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var _primaryColor = Constant.primaryColor;
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowDiscountCodeDetail()));
      },
      child: Container(
        margin: EdgeInsets.all(5.0),
        padding:EdgeInsets.all(5.0),
        height: size.height * 0.2,
        width:size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: size.height * 0.1,
                  width:size.width * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item.image),
                      fit: BoxFit.fill,
                    )
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Mã giảm giá Shop',style: TextStyle(color:Colors.black,fontSize:10.0),),
                    Text(item.shopName+' '+item.discountPercentage+' khi mua',style: TextStyle(color:Colors.black,fontSize:10.0),),
                    Text(item.shopService+' chính hãng',style: TextStyle(color:Colors.black,fontSize:10.0),),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Tiết kiệm',style: TextStyle(color:Colors.black,fontSize:10.0),),
                    Text(item.discountPercentage,style: TextStyle(color:Color.fromRGBO(255, 51, 0,1.0),),),

                  ],
                ),


              ],
            ),
            Divider(
              color:_primaryColor,
              thickness: 1.0,
            ),
            Row(
              children: <Widget>[
                Text('Mã giảm giá',style: TextStyle(color:Colors.black,fontSize:10.0),),

                SizedBox(width: 5.0,),

                Container(
                  height:size.height * 0.04,
                  width:size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(child: Text(item.discountCode,style: TextStyle(color:Colors.red,fontSize:10.0),)),
                ),
                SizedBox(width: 5.0,),

                Container(
                  height:size.height * 0.04,
                  width:size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(
                    child: Text('Copy',style: TextStyle(color: Colors.black,fontSize: 10.0),),
                  ),
                ),
                Spacer(),
                Container(
                  height:size.height * 0.04,
                  width:size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(
                    child: Text('Chi Tiết',style: TextStyle(color: Colors.black,fontSize: 10.0),),
                  ),
                ),
                LikeButton(likeBuilder:(bool isLiked){
                  return Icon(
                    isLiked?Icons.favorite:Icons.favorite_border,
                    color: isLiked?Colors.red:Colors.black26,
                  );
                },),
              ],
            ),
          ],
        ),

      ),
    );
  }

}

class ShowDiscountCode1 extends StatelessWidget{
  DiscountCode item;
  ShowDiscountCode1({required this.item});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var _primaryColor = Constant.primaryColor;
    return Container(
      margin: EdgeInsets.all(5.0),
      padding:EdgeInsets.all(5.0),
      height: size.height * 0.2,
      width:size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: _primaryColor,width:3.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: size.height * 0.1,
                width:size.width * 0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item.image),
                      fit: BoxFit.fill,
                    )
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Mã giảm giá Shop',style: TextStyle(color:Colors.black,fontSize:10.0),),
                  Text(item.shopName+' '+item.discountPercentage+' khi mua',style: TextStyle(color:Colors.black,fontSize:10.0),),
                  Text(item.shopService+' chính hãng',style: TextStyle(color:Colors.black,fontSize:10.0),),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Tiết kiệm',style: TextStyle(color:Colors.black,fontSize:10.0),),
                  Text(item.discountPercentage,style: TextStyle(color:Color.fromRGBO(255, 51, 0,1.0),),),

                ],
              ),


            ],
          ),
          Divider(
            color:_primaryColor,
            thickness: 3.0,
          ),
          Row(
            children: <Widget>[
              Text('Mã giảm giá',style: TextStyle(color:Colors.black,fontSize:10.0),),

              SizedBox(width: 5.0,),

              Container(
                height:size.height * 0.04,
                width:size.width * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(child: Text(item.discountCode,style: TextStyle(color:Colors.red,fontSize:10.0),)),
              ),
              SizedBox(width: 5.0,),

              Container(
                height:size.height * 0.04,
                width:size.width * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text('Copy',style: TextStyle(color: Colors.black,fontSize: 10.0),),
                ),
              ),
              Spacer(),
              Container(
                height:size.height * 0.04,
                width:size.width * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text('Chi Tiết',style: TextStyle(color: Colors.black,fontSize: 10.0),),
                ),
              ),
              LikeButton(likeBuilder:(bool isLiked){
                return Icon(
                  isLiked?Icons.favorite:Icons.favorite_border,
                  color: isLiked?Colors.red:Colors.black26,
                );
              },),
            ],
          ),
        ],
      ),

    );
  }

}