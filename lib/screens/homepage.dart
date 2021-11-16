import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          color: Colors.grey[400],
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.grey[400],
                  height: size.height * 0.15,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Chào,Jack Dawson',textAlign:TextAlign.center,),
                      Spacer(),
                      CircleAvatar(
                        child: Image.asset('assets/home_page/jack.jpg'),
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
                    color: Colors.pink[100],
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
                    color: Colors.pink[100],
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
                    color: Colors.pink[100],
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
                    color: Colors.pink[100],
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
    return Container(
      height: size.height * 0.08,
      margin: EdgeInsets.fromLTRB(10.0,1.0,10.0,1.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width:5.0),
          Text(optionTitle)
          ,
        ],
      ),
    );
  }

}