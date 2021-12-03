import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prices_dart/constants.dart' as Constant;
import 'package:prices_dart/services/account_page/discount_code/show_discount_code.dart';
import 'package:prices_dart/services/home_page/shops/shop.dart';
import 'package:prices_dart/services/home_page/shops/show_shop_column.dart';

import 'discount_code.dart';


class ShowDiscountCodeDetail extends StatelessWidget{

  List<DiscountCode> discountCodeList=[
    DiscountCode(image:'assets/account_page/shopvnexpress.jpg',discountPercentage:'9%',shopName:'Vnexpress',shopService:'Sneaker House',discountCode:'JK94M'),
    DiscountCode(image:'assets/account_page/baemin.png',discountPercentage:'9%',shopName:'Baemin',shopService:'Hadilao',discountCode:'JD45M'),
  ];

  List<Shop> _shopList=[
    Shop(name: 'Shopee',image:'assets/home_page/shopee_brand.png',percent:'xx'),
    Shop(name: 'Tiki',image:'assets/home_page/tiki_brand.png',percent:'xx'),
    Shop(name:'Sendo',image:'assets/home_page/sendo_brand.png',percent:'xx'),
  ];

  List<Shop> _shopList1=[
    Shop(name: 'Aeonshop',image:'assets/home_page/aeonshop_brand.png',percent:'xx'),
    Shop(name: 'Fado',image:'assets/home_page/fado_brand.png',percent:'xx'),
    Shop(name: 'HNOSS',image:'assets/home_page/HNOSS_brand.jpg',percent:'xx'),
  ];

  @override
  Widget build(BuildContext context) {
    var _primaryColor = Constant.primaryColor;
    var size =MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Container(
          height: size.height * 0.1,
          width: size.width *0.15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/account_page/ahamove.png'),
              fit: BoxFit.fill
            ),

          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.check_circle,color: Colors.green,),
        ],
      ),
      body: Container(
        color: _primaryColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0,10.0),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Miễn phí đơn hàng đầu tiên áp dụng cho khách hàng mới sử dụng Ahamove lần đầu.',
                    style:TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,

                    ) ,
                  ),
                  SizedBox(height: 10.0,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text:'Hạn dùng: ',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                        TextSpan(text:'12/11/2020',style: TextStyle(color: Colors.deepOrange,fontSize: 10.0)),
                      ],
                    ),
                  ),
                  Divider(
                    color: _primaryColor,
                    thickness: 1.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text:'Nghành hàng: ',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                        TextSpan(text:'Xe công nghệ - Giao đồ ăn - Giao hàng nhanh',style: TextStyle(color: Colors.deepOrange,fontSize: 10.0)),
                      ],
                    ),
                  ),
                  Divider(
                    color: _primaryColor,
                    thickness: 1.0,
                  ),
                  Text('Đã sử dụng: 769 lượt',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                  Divider(
                    color: _primaryColor,
                    thickness: 1.0,
                  ),
                  Text('Điều kiện:',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                  Text('* Áp dụng cho khách hàng sử dụng Ahamove lần đầu',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                  Text('* Giảm tối đa 30k',style: TextStyle(color: Colors.black,fontSize: 10.0)),

                  Divider(
                    color: _primaryColor,
                    thickness: 1.0,
                  ),

                  Container(
                    child: Row(
                      children: [
                        Container(
                          height:size.height * 0.04,
                          width:size.width * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(child: Text('JK94M',style: TextStyle(color:Colors.deepOrange,fontSize:10.0),)),
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
                          width:size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: Text('Đi đến trang Ahamove',style: TextStyle(color:Colors.white,fontSize: 10.0),),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Text(
              'Mã giảm giá khác',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,

              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              height: size.height * 0.23,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: discountCodeList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ShowDiscountCode1(item: discountCodeList[index],);
                },
              ),
            ),

            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Cửa hàng uy tín',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Text(
                      'Xem tất cả',
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 8.0,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 8.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              height: size.height * 0.27,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _shopList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ShowShopInColumn(item:_shopList[index],item1: _shopList1[index],);
                },
              ),
            ),

          ],
          ),
        ),
      ),
    );
  }

}
