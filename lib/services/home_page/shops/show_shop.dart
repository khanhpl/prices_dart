import 'package:flutter/material.dart';
import 'package:prices_dart/services/home_page/shops/shop.dart';


class ShowShop extends StatelessWidget{
  Shop item;
  ShowShop({required this.item});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5.0),
      padding:EdgeInsets.all(5.0),
      height: size.height * 0.11,
      width:size.width * 0.35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: size.height *0.05,
                width:size.width *0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item.image),
                    fit: BoxFit.fill,
                  )
                ),
              ),
              Spacer(),
              Icon(Icons.favorite_border,color:Colors.black26),
            ],
          ),
          SizedBox(height:5.0),
          Text(
            'Hoàn tiền đến '+item.percent+'%',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11.0,
            ),
          ),
        ],
      ),
    );
  }
  
}

class ShowShop1 extends StatelessWidget{
  Shop item;
  ShowShop1({required this.item});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5.0),
      padding:EdgeInsets.all(5.0),
      height: size.height * 0.11,
      width:size.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: size.height *0.05,
                width:size.width *0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item.image),
                      fit: BoxFit.fill,
                    )
                ),
              ),
              Spacer(),
              Icon(Icons.favorite_border,color:Colors.black26),
            ],
          ),
          SizedBox(height:5.0),
          Text(
            'Hoàn tiền đến '+item.percent+'%',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11.0,
            ),
          ),
        ],
      ),
    );
  }

}