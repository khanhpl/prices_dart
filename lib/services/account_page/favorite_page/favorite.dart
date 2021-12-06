import 'package:flutter/material.dart';
import 'package:prices_dart/services/account_page/discount_code/discount_code.dart';
import 'package:prices_dart/services/account_page/discount_code/show_discount_code.dart';
import 'package:prices_dart/services/home_page/product_types/product_type.dart';
import 'package:prices_dart/services/home_page/product_types/show_product_type.dart';
import 'package:prices_dart/services/home_page/shops/shop.dart';
import 'package:prices_dart/services/home_page/shops/show_shop.dart';
import 'package:prices_dart/constants.dart' as Constant;

class FavoritePage extends StatelessWidget{


  List<Shop> favoriteShopList=[
    Shop(name: 'Shopee',image:'assets/home_page/shopee_brand.png',percent:'xx'),
    Shop(name: 'Tiki',image:'assets/home_page/tiki_brand.png',percent:'xx'),
    Shop(name:'Sendo',image:'assets/home_page/sendo_brand.png',percent:'xx'),
  ];



  List<ProductType> favoriteProductTypeList=[
    ProductType(image:'assets/home_page/product_type1.PNG',name:'Điện thoại - Máy tính bảng',percent: 'xx'),
    ProductType(image:'assets/home_page/product_type3.PNG',name:'Laptop-Thiết bị IT',percent: 'xx'),
  ];

  List<DiscountCode> discountCodeList=[
    DiscountCode(image:'assets/account_page/shopvnexpress.jpg',discountPercentage:'9%',shopName:'Vnexpress',shopService:'Sneaker House',discountCode:'JK94M'),
    DiscountCode(image:'assets/account_page/baemin.png',discountPercentage:'9%',shopName:'Baemin',shopService:'Hadilao',discountCode:'JD45M'),
  ];



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _primaryColor = Constant.primaryColor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('Đã yêu thích',style: TextStyle(color: Colors.black,),),
        centerTitle: true,

      ),

      body: Container(
        color: _primaryColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10.0,20.0,10.0,0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Cửa hàng',
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
                        'Xem tất cả',
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
                height: size.height * 0.15,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: favoriteShopList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ShowShop(item: favoriteShopList[index],);
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(10.0,20.0,10.0,0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Ngành hàng',
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
                        'Xem tất cả',
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
                height: size.height * 0.15,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: favoriteProductTypeList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ShowProductType(item: favoriteProductTypeList[index],);
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(10.0,20.0,10.0,0.0),
                child: Text(
                  'Mã giảm giá',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.height *0.03,
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
                    return ShowDiscountCode(item: discountCodeList[index],);
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