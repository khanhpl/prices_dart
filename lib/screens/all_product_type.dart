import 'package:flutter/material.dart';
import 'package:prices_dart/services/home_page/product_types/product_type.dart';
import 'package:prices_dart/services/home_page/product_types/show_product_type.dart';
class AllProductType extends StatelessWidget{
  List<ProductType> favoriteList;
  List<ProductType> allProductTypeList;
  AllProductType({required this.favoriteList,required this.allProductTypeList});


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
        title: Text('Tất cả ngành hàng',style:TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Container(
        color: _primaryColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(margin: EdgeInsets.fromLTRB(10.0,20.0,10.0,0.0),child: Text('Ngành hàng bạn quan tâm',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize:size.height*0.03),)),
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
                    return ShowProductType(item: favoriteList[index],);
                  },
                ),
              ),
              Container(margin: EdgeInsets.fromLTRB(10.0,20.0,10.0,0.0),child: Text('Ngành hàng khác',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: size.height*0.03),)),

              Container(
                margin: EdgeInsets.all(5.0),
                // height: double.infinity,
                width: double.infinity,
                child: ListView.separated(
                  shrinkWrap:true,
                  physics:NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: allProductTypeList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ShowProductType1(item:allProductTypeList[index],);
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