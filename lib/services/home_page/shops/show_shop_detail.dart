import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prices_dart/constants.dart' as Constant;
import 'package:prices_dart/screens/account/refund_policy.dart';
import 'package:prices_dart/services/account_page/discount_code/discount_code.dart';
import 'package:prices_dart/services/account_page/discount_code/show_discount_code.dart';
import 'package:prices_dart/services/home_page/product_types/product_type.dart';
import 'package:prices_dart/services/home_page/shops/shop.dart';
import 'package:prices_dart/services/home_page/shops/show_shop_column.dart';

class ShowShopDetail extends StatelessWidget{
  Shop item;
  ShowShopDetail({required this.item});

  List<ProductType> _listForRefund =[
    ProductType(image: '', name: 'Điện thoại - Máy tính bảng', percent:'xx%'),
    ProductType(image: '', name: 'Điện thoại - Máy tính bảng', percent:'xx%'),
    ProductType(image: '', name: 'Điện thoại - Máy tính bảng', percent:'xx%'),
    ProductType(image: '', name: 'Điện thoại - Máy tính bảng', percent:'xx%'),
    ProductType(image: '', name: 'Điện thoại - Máy tính bảng', percent:'xx%'),
    ProductType(image: '', name: 'Điện thoại - Máy tính bảng', percent:'xx%'),

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
    var size =MediaQuery.of(context).size;
    var _primaryColor = Constant.primaryColor;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        centerTitle: true,
        title: Container(
          height: size.height * 0.05,
          width: size.width *0.15,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(item.image),
                fit: BoxFit.fill
            ),

          ),
        ),
        actions: <Widget>[
          Icon(Icons.check_circle,color: Colors.green,),
        ],
      ),
      body: Container(
        color: _primaryColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children:  <Widget>[
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
                      'Mã giảm giá, chương trình khuyến mãi và hoàn tiền',
                      style:TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: size.height *0.023,
                      ) ,
                    ),
                    Row(
                      children: [
                        Text(
                          item.name+' tháng 6/2020',
                          style:TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: size.height *0.023,
                          ) ,
                        ),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>RefundPolicy()));
                            },
                            child: Text(
                              '...xem thêm',
                              style: TextStyle(color: Color.fromRGBO(255, 51, 0, 1.0)),
                            )
                        ),
                      ],
                    ),

                    SizedBox(height: 10.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height:size.height * 0.05,
                          width:size.width * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(child: Text('Hoàn tiền đến '+item.percent+'%',style: TextStyle(color:Color.fromRGBO(255, 51, 0, 1.0),fontSize:10.0),)),
                        ),
                        Container(
                          height:size.height * 0.05,
                          width:size.width * 0.4,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 51, 0, 1.0),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(child: Text('Đi đến trang '+item.name,style: TextStyle(color:Colors.white,fontSize:10.0),)),
                        ),
                      ],
                    ),
                      ],

                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(10.0,20.0, 10.0,0.0),
                child: Text(
                  'Doanh mục hoàn tiền tại '+item.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.height *0.03,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(5.0),
                // height: size.height * 0.25,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: _listForRefund.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return RefundForBrand(item: _listForRefund[index],);
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
                      'Xem thêm cửa hàng khác',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.height *0.03,
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

class RefundForBrand extends StatefulWidget{
  ProductType item;

  RefundForBrand({required this.item});

  @override
  State<RefundForBrand> createState() => _RefundForBrandState();
}

class _RefundForBrandState extends State<RefundForBrand> {

  bool isSelected =false;

  List<DiscountCode> discountCodeList=[
    DiscountCode(image:'assets/account_page/shopvnexpress.jpg',discountPercentage:'9%',shopName:'Vnexpress',shopService:'Sneaker House',discountCode:'JK94M'),
    DiscountCode(image:'assets/account_page/shopvnexpress.jpg',discountPercentage:'9%',shopName:'Vnexpress',shopService:'Sneaker House',discountCode:'JK94M'),
    DiscountCode(image:'assets/account_page/baemin.png',discountPercentage:'9%',shopName:'Baemin',shopService:'Hadilao',discountCode:'JD45M'),
  ];

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.item.name,style:TextStyle(color: Colors.black,fontSize: 13.0,),),
                    Text('Hoàn tiền đến '+widget.item.percent,style:TextStyle(color: Colors.black,fontSize: 13.0,fontWeight: FontWeight.bold),),
                  ],
                ),

                Container(
                  height:size.height * 0.04,
                  width:size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(
                    child: Text('Mua ngay',style: TextStyle(color: Colors.black,fontSize: 10.0),),
                  ),
                ),
                Icon(Icons.favorite_border,color: Colors.black26,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.0,
                    child: isSelected?
                    Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.black,
                      size: 15.0,
                    ):
                    Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                    size: 15.0,
                  )
                  ),
                ),
              ]
          ),
        ),

        Container(

          child: isSelected?Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10.0),bottomRight:Radius.circular(10.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,0.0),child: Text('Mã giảm giá',style: TextStyle(color: Colors.black,),)),
                Container(
                  margin: EdgeInsets.all(5.0),
                  width:size.width * 0.85,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: discountCodeList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox();
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return ShowDiscountCode1(item: discountCodeList[index],);
                    },
                  ),
                ),
              ],
            ),
          ):SizedBox(),
        ),

      ],
    );
  }
}