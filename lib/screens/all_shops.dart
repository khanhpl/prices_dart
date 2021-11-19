import 'package:flutter/material.dart';
import 'package:prices_dart/services/home_page/shops/shop.dart';
import 'package:prices_dart/services/home_page/shops/show_shop.dart';

class AllShops extends StatelessWidget{
  List<Shop> favoriteList;
  List<Shop> allShopList;
  AllShops({required this.favoriteList,required this.allShopList});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _primaryColor = Color.fromRGBO(239,239,239,1.0);
    return Scaffold(
      appBar: AppBar(

        iconTheme:IconThemeData(
          color: Colors.black,

        ),
        backgroundColor: Colors.white,
        title: Text('Tất cả cửa hàng'),
        centerTitle: true,
      ),
      body: Container(
        color: _primaryColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Cửa hàng bạn quan tâm',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
              Container(
                margin: EdgeInsets.all(5.0),
                height: size.height * 0.15,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: favoriteList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ShowShop(item: favoriteList[index],);
                  },
                ),
              ),
              Text('Cửa hàng khác',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
            ],
          ),
        ),
      ),
    );
  }

}