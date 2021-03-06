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
        elevation: 0.5,
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
                    'Mi???n ph?? ????n h??ng ?????u ti??n ??p d???ng cho kh??ch h??ng m???i s??? d???ng Ahamove l???n ?????u.',
                    style:TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: size.height *0.025,

                    ) ,
                  ),
                  SizedBox(height: 10.0,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text:'H???n d??ng: ',style: TextStyle(color: Colors.black,fontSize: 10.0)),
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
                        TextSpan(text:'Ngh??nh h??ng: ',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                        TextSpan(text:'Xe c??ng ngh??? - Giao ????? ??n - Giao h??ng nhanh',style: TextStyle(color: Colors.green,fontSize: 10.0)),
                      ],
                    ),
                  ),
                  Divider(
                    color: _primaryColor,
                    thickness: 1.0,
                  ),
                  Text('???? s??? d???ng: 769 l?????t',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                  Divider(
                    color: _primaryColor,
                    thickness: 1.0,
                  ),
                  Container(margin: EdgeInsets.all(5.0),child: Text('??i???u ki???n:',style: TextStyle(color: Colors.black,fontSize: 10.0))),
                  Container(margin: EdgeInsets.all(5.0),child: Text('* ??p d???ng cho kh??ch h??ng s??? d???ng Ahamove l???n ?????u',style: TextStyle(color: Colors.black,fontSize: 10.0))),
                  Container(margin: EdgeInsets.all(5.0),child: Text('* Gi???m t???i ??a 30k',style: TextStyle(color: Colors.black,fontSize: 10.0))),

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
                          width:size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 51, 0, 1.0),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: Text('??i ?????n trang Ahamove',style: TextStyle(color:Colors.white,fontSize: 10.0),),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(10.0, 20.0, 5.0,0.0),
              child: Text(
                'M?? gi???m gi?? kh??c',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.03,
                  fontWeight: FontWeight.w500,

                ),
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
                    'C???a h??ng uy t??n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.height *0.03,
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Text(
                      'Xem t???t c???',
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.black54,
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
