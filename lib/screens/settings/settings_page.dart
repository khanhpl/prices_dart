import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsPage extends StatefulWidget{
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notification_status = false;
  bool _isVietnamese = true ;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _primaryColor = Color.fromRGBO(239,239,239,1.0);
    var _itemColor = Color.fromRGBO(243,250,255,1.0);
    return Scaffold(
      backgroundColor: _primaryColor,
      body: Container(
        color: _primaryColor,
        margin:EdgeInsets.fromLTRB(10.0,size.height *0.1,10.0,10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Cài đặt chung',style:TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),

            SizedBox(height:10.0),

            Container(
              padding: EdgeInsets.all(10.0),
              height: size.height * 0.08,
              margin: EdgeInsets.fromLTRB(10.0 ,2.0, 10.0,2.0),
              decoration: BoxDecoration(
                color: _itemColor,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),topRight:Radius.circular(10.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Cài đặt thông báo',style: TextStyle(color: Colors.black),),
                  Spacer(),
                  FlutterSwitch(
                    height: size.height * 0.04,
                    value: _notification_status,
                    activeColor: Colors.blue,
                    onToggle: (bool value){
                      setState((){
                        _notification_status = value;
                      });
                    },
                  ),

                ],
              ),
            ),

            Container(
              color: _itemColor,
              padding: EdgeInsets.all(10.0),
              height: size.height * 0.08,
              margin: EdgeInsets.fromLTRB(10.0 ,2.0, 10.0,2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Cài đặt thông báo',style: TextStyle(color: Colors.black),),
                  Spacer(),
                  FlutterSwitch(
                    height: size.height * 0.04,
                    value: _notification_status,
                    activeColor: Colors.blue,
                    onToggle: (bool value){
                      setState((){
                        _notification_status = value;
                      });
                    },
                  ),

                ],
              ),
            ),

            Container(
              color: _itemColor,
              padding: EdgeInsets.all(10.0),
              height: size.height * 0.08,
              margin: EdgeInsets.fromLTRB(10.0 ,2.0, 10.0,2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Ngôn ngữ',style: TextStyle(color: Colors.black),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _isVietnamese = true;
                      });
                    },
                    child: Container(
                      width: size.width * 0.1,
                      decoration: BoxDecoration(
                        color: _isVietnamese ? Colors.green:Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text('VI',style: TextStyle(color:_isVietnamese?Colors.white:Colors.black26),textAlign: TextAlign.center,),
                    ),
                  ),
                  SizedBox(width:5.0),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        _isVietnamese = false;
                      });
                    },
                    child: Container(
                      width: size.width * 0.1,
                      decoration: BoxDecoration(
                        color: _isVietnamese == false? Colors.green:Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text('EN',style: TextStyle(color:_isVietnamese == false? Colors.white:Colors.black26,),textAlign: TextAlign.center),
                    ),
                  ),


                ],
              ),
            ),

            Container(
              height: size.height * 0.08,
              margin: EdgeInsets.fromLTRB(10.0 ,2.0, 10.0,2.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: _itemColor,
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Thông tin ứng dụng',style: TextStyle(color: Colors.black),),
                  Spacer(),
                  CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.0,),
                  ),

                ],
              ),
            ),

            SizedBox(height :10.0),

            Container(
              height: size.height * 0.08,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextButton(
                      child: Text('Thoát ứng dụng',style: TextStyle(color: Colors.black26),),
                      onPressed: (){},
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextButton(
                      child: Text('Trang chủ',style: TextStyle(color: Colors.white),),
                      onPressed: (){},
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}