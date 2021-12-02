import 'package:flutter/material.dart';
import 'package:prices_dart/constants.dart' as Constant;
import 'package:prices_dart/services/home_page/product_types/product_type.dart';
import 'package:prices_dart/services/home_page/product_types/show_product_type_column.dart';
import 'package:prices_dart/services/home_page/shops/shop.dart';

class ShowProductTypeDetail extends StatelessWidget{
  String name;

  ShowProductTypeDetail({required this.name});

  List<Shop> _shopForDetailList = [
    Shop(image:'assets/notification_page/lottevn.png',percent:'xx%'),
    Shop(image:'assets/notification_page/bachhoaxanh.png',percent:'xx%'),
    Shop(image:'assets/notification_page/lazada.png',percent:'xx%'),

    Shop(image:'assets/notification_page/lottevn.png',percent:'xx%'),
    Shop(image:'assets/notification_page/bachhoaxanh.png',percent:'xx%'),
    Shop(image:'assets/notification_page/lazada.png',percent:'xx%'),

    Shop(image:'assets/notification_page/lottevn.png',percent:'xx%'),
    Shop(image:'assets/notification_page/bachhoaxanh.png',percent:'xx%'),
    Shop(image:'assets/notification_page/lazada.png',percent:'xx%'),
  ];

  List <ProductType> _typeList=[
    ProductType(image:'assets/home_page/product_type1.PNG',name:'Điện thoại - Máy tính bảng',percent: 'xx'),
    ProductType(image:'assets/home_page/product_type3.PNG',name:'Laptop-Thiết bị IT',percent: 'xx'),
  ];

  List <ProductType> _typeList1=[
    ProductType(image:'assets/home_page/product_type2.PNG' ,name:'Máy ảnh - Máy quay phim',percent: 'xx'),
    ProductType(image: 'assets/home_page/product_type4.PNG',name:'Thời trang - Phụ kiện',percent: 'xx'),
  ];


  @override
  Widget build(BuildContext context) {
    var _primaryColor =Constant.primaryColor;
    var size =MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ngành hàng',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color:_primaryColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name,style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),

              Container(
                margin: EdgeInsets.all(5.0),
                // height: double.infinity,
                width: double.infinity,
                child: ListView.separated(
                  shrinkWrap:true,
                  physics:NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: _shopForDetailList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ShopForDetail(item:_shopForDetailList[index]);
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
                      'Xem thêm ngành hàng khác',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
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
                height: size.height * 0.25,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _typeList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ShowProductTypeInColumn(item:_typeList[index],item1: _typeList1[index],);
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

class ShopForDetail extends StatelessWidget{
  Shop item;

  ShopForDetail({required this.item});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
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
              height:size.height * 0.1,
              width:size.width * 0.2,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage(item.image),
                  fit:BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width:5.0),

            Text('Hoàn tiền đến '+item.percent,style:TextStyle(color: Colors.black,fontSize: 13.0,fontWeight: FontWeight.bold),),

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
                child: Text('Mua ngay',style: TextStyle(color: Colors.black26,fontSize: 10.0),),
              ),
            ),
            Icon(Icons.favorite_border,color: Colors.black26,),
          ]
      ),
    );
  }

}