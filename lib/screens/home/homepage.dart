
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prices_dart/screens/all_product_type.dart';
import 'package:prices_dart/screens/all_shops.dart';
import 'package:prices_dart/screens/notifications/notification_page.dart';
import 'package:prices_dart/services/home_page/product_types/product_type.dart';
import 'package:prices_dart/services/home_page/product_types/show_product_type_column.dart';
import 'package:prices_dart/services/home_page/shops/shop.dart';
import 'package:prices_dart/services/home_page/shops/show_shop_column.dart';
import '../../globals.dart' as globals;


class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _imageList = ['assets/home_page/tiki_ads.png','assets/home_page/mrspeedy_ads.png'];

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

  List<Shop> _allShopList=[
    Shop(name: 'Aeonshop',image:'assets/home_page/aeonshop_brand.png',percent:'xx'),
    Shop(name: 'Fado',image:'assets/home_page/fado_brand.png',percent:'xx'),
    Shop(name: 'HNOSS',image:'assets/home_page/HNOSS_brand.jpg',percent:'xx'),
    Shop(name: 'Aeonshop',image:'assets/home_page/aeonshop_brand.png',percent:'xx'),
    Shop(name: 'Fado',image:'assets/home_page/fado_brand.png',percent:'xx'),
    Shop(name: 'HNOSS',image:'assets/home_page/HNOSS_brand.jpg',percent:'xx'),
    Shop(name: 'Aeonshop',image:'assets/home_page/aeonshop_brand.png',percent:'xx'),
    Shop(name: 'Fado',image:'assets/home_page/fado_brand.png',percent:'xx'),
    Shop(name: 'HNOSS',image:'assets/home_page/HNOSS_brand.jpg',percent:'xx'),
  ];

  List <ProductType> _typeList=[
    ProductType(image:'assets/home_page/product_type1.PNG',name:'Điện thoại - Máy tính bảng',percent: 'xx'),
    ProductType(image:'assets/home_page/product_type3.PNG',name:'Laptop-Thiết bị IT',percent: 'xx'),
  ];

  List <ProductType> _typeList1=[
    ProductType(image:'assets/home_page/product_type2.PNG' ,name:'Máy ảnh - Máy quay phim',percent: 'xx'),
    ProductType(image: 'assets/home_page/product_type4.PNG',name:'Thời trang - Phụ kiện',percent: 'xx'),
  ];

  List <ProductType> _allTypeList=[
    ProductType(image:'assets/home_page/product_type2.PNG' ,name:'Máy ảnh - Máy quay phim',percent: 'xx'),
    ProductType(image: 'assets/home_page/product_type4.PNG',name:'Thời trang- Phụ kiện',percent: 'xx'),
    ProductType(image:'assets/home_page/product_type2.PNG' ,name:'Máy ảnh - Máy quay phim',percent: 'xx'),
    ProductType(image: 'assets/home_page/product_type4.PNG',name:'Thời trang - Phụ kiện',percent: 'xx'),
    ProductType(image:'assets/home_page/product_type2.PNG' ,name:'Máy ảnh - Máy quay phim',percent: 'xx'),
    ProductType(image: 'assets/home_page/product_type4.PNG',name:'Thời trang- Phụ kiện',percent: 'xx'),
    ProductType(image:'assets/home_page/product_type2.PNG' ,name:'Máy ảnh - Máy quay phim',percent: 'xx'),
    ProductType(image: 'assets/home_page/product_type4.PNG',name:'Thời trang - Phụ kiện',percent: 'xx'),
  ];

  List<Navigator> _navigatorList = [

  ];

  bool _isBottomNav = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _primaryColor = Color.fromRGBO(239,239,239,1.0);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height: size.height * 0.05,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home_page/prices_brand.PNG'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Container(
          height: size.height *0.06,
          width: size.width *0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:  BorderRadius.circular(20),
            border: Border.all(color: Colors.grey),
          ),
          child: TextField(
            style: TextStyle(
              fontSize: 12.0,
            ),
            decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 8.0),
              hintText: 'Tìm mã giảm giá HOT, cơ hội hoàn tiền mới',
              suffixIcon: Icon(Icons.search,size:20.0,),
              border: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(5.0,15.0,0,15.0),
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                _isBottomNav = false;
                Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationPage(isBottomNav:_isBottomNav ,)));
              });
            },
            icon: Icon(Icons.notifications,color: Colors.black26,),
          ),
        ],
      ),
      body: Container(
        color: _primaryColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height:size.height * 0.1,
                      width: size.width *0.2,
                      decoration:BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/home_page/prices_logo.PNG'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width:10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Chào Luân Phan',style: TextStyle(fontSize: 10.0,color: Colors.black)),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text:'365.150đ',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 11.0)),
                              TextSpan(text:' là số dư trong ví',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                            ]
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    globals.isAvatarChecked == false ? Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/account_page/jack.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width: size.height * 0.07,
                      height: size.height * 0.07,
                    ): Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: FileImage(globals.avatarFile),
                          // image: AssetImage('assets/account_page/jack.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width: size.height * 0.07,
                      height: size.height * 0.07,
                    ),
                  ],
                ),
              ),

              // ads
              Container(
                margin: EdgeInsets.all(10.0),
                height: size.height * 0.3,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _imageList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 10.0);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: size.height * 0.3,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(_imageList[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
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
                        fontSize: size.height *0.03,
                        fontWeight: FontWeight.w500,

                    ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>AllShops(favoriteList:_shopList,allShopList:_shopList1,)));
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>AllShops(favoriteList:_shopList,allShopList:_shopList1,)));
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
                height: size.height * 0.26,
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

              Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Ngành hàng nổi bật',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.height *0.03,
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>AllProductType(favoriteList:_typeList,allProductTypeList:_allTypeList,)));
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>AllProductType(favoriteList:_typeList,allProductTypeList:_allTypeList,)));
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
                height: size.height * 0.28,
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