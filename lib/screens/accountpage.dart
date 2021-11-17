import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:prices_dart/constants.dart' as constants;

class AccountPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _rateColor = Color.fromRGBO(91, 150, 16,1.0);
    var _primaryColor = Color.fromRGBO(239,239,239,1.0);
    var _itemColor = Color.fromRGBO(243,250,255,1.0);
    return Scaffold(
        body: Container(
          color: _primaryColor,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: _primaryColor,
                  height: size.height * 0.15,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width:10.0),
                      Spacer(),
                      Text('Chào,Jack Dawson',textAlign:TextAlign.center,),
                      Spacer(),
                      CircleAvatar(
                        backgroundImage:AssetImage('assets/account_page/jack.jpg'),
                        radius: 30.0,
                      )
                    ],
                  ),
                ),
                Text(
                    'Tài khoản',
                  style:TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: size.height * 0.1,
                  margin: EdgeInsets.fromLTRB(10.0,5.0 ,10.0,5.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: _itemColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('số dư trong ví',style: TextStyle(color: Colors.black26,)),
                              SizedBox(height:5.0),
                              Text('365.150đ',style: TextStyle(color: Colors.red,fontSize:22.0,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.0,),
                        ),
                      ],
                    ),
                ),

                Container(
                  height: size.height * 0.1,
                  margin: EdgeInsets.fromLTRB(10.0,5.0 ,10.0,5.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: _itemColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('đang xử lý',style: TextStyle(color: Colors.black26,)),
                            SizedBox(height:5.0),
                            Text('65.150đ',style: TextStyle(color: Colors.red,fontSize:22.0,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.0,),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: size.height * 0.1,
                  margin: EdgeInsets.fromLTRB(10.0,5.0 ,10.0,5.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: _itemColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('lịch sử đơn hàng ',style: TextStyle(color: Colors.black26,)),
                            SizedBox(height:5.0),
                            Text('75 đơn hàng thành công',style: TextStyle(color: Colors.green,fontSize:15.0,),),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.0,),
                      ),
                    ],
                  ),

                ),

                Container(
                  height: size.height * 0.1,
                  margin: EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: _itemColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('lịch sử rút tiền ',style: TextStyle(color: Colors.black26,)),
                            SizedBox(height:5.0),
                            Text('05 giao dịch thành công',style: TextStyle(color: Colors.green,fontSize:15.0,),),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.0,),
                      ),
                    ],
                  ),

                ),

                SizedBox(height:40.0),

                Option(icon: Icons.account_box_rounded,optionTitle: 'Cài đặt tài khoản'),
                Option(icon: Icons.favorite,optionTitle: 'Đã yêu thích'),
                Option(icon: Icons.settings,optionTitle: 'Cài đặt chung'),
                Option(icon: Icons.comment,optionTitle: 'Góp ý cho Prices'),
                Option(icon: Icons.money,optionTitle: 'Chính sách hoàn tiền'),

                SizedBox(height:40.0),

                Container(
                  height: size.height * 0.15,
                  margin: EdgeInsets.fromLTRB(10.0,0.0 ,10.0,5.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: _rateColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: size.height *0.1,
                        width:size.width *0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/account_page/price_logo.PNG'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Đánh giá app Prices',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                          SizedBox(height:5.0),
                          RatingBar.builder(

                            itemSize: 20.0,
                            initialRating: 0,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                              // size: 10.0,
                            ),
                            onRatingUpdate: (rating) {
                            },
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text('Đánh giá ngay',style: TextStyle(color: Colors.black26,fontSize: 10.0),textAlign: TextAlign.center,),
                        ),
                      ),


                    ],
                  ),

                ),


              ],
            ),
          ),
        ),
    );
  }

}

class Option extends StatelessWidget{
  IconData  icon;
  String optionTitle;
  Option({required this.icon,required this.optionTitle});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _itemColor = Color.fromRGBO(243,250,255,1.0);
    var _iconColor = Color.fromRGBO(102,102,102,1.0);
    return Container(
      height: size.height * 0.08,
      margin: EdgeInsets.fromLTRB(10.0,1.0,10.0,1.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: _itemColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: <Widget>[
          Icon(icon,color: _iconColor,),
          SizedBox(width:5.0),
          Text(optionTitle,style: TextStyle(color: _iconColor),)
          ,
        ],
      ),
    );
  }

}