import 'package:flutter/material.dart';
import 'package:prices_dart/constants.dart' as Constants;
import 'package:prices_dart/services/notification_page/notification.dart';
import 'package:prices_dart/services/notification_page/show_notification.dart';


class NotificationPage extends StatelessWidget{
  bool isBottomNav;
  NotificationPage({required this.isBottomNav});

  List<NotificationInfo> _listNotification =
  [
    NotificationInfo(image:'assets/notification_page/lottevn.png',name:'Laptop-Thiết bị IT',content:'Hoàn tiền đến xx%',type:'type0'),
    NotificationInfo(image:'assets/notification_page/bachhoaxanh.png',name:'Hoàn tiền thành công',content:'Số tiền 120.453đ',type:'type1'),
    NotificationInfo(image:'assets/notification_page/lazada.png',name:'Điện gia dụng',content:'Hoàn tiền đến xx%',type:'type0'),
    NotificationInfo(image:'assets/home_page/prices_logo.PNG',name:'Hệ thống',content:'Price có bản cập nhật MỚI',type:'type2'),
    NotificationInfo(image:'assets/home_page/prices_logo.PNG',name:'Rút tiền thành công',content:'Mã giao dịch #2356987',type:'type1'),
    NotificationInfo(image:'assets/notification_page/luxstay.png',name:'Mã giảm giá Luxstay',content:'Giảm giá lên đến 300k',type:'type0'),
  ];

  @override
  Widget build(BuildContext context) {
    var _primaryColor =Constants.primaryColor;
    var size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading:isBottomNav ==true?false:true,
        backgroundColor: Colors.white,
        title: Text(
          'Thông báo',
          style: TextStyle(
          color: Colors.black,
        ),
        ),
        centerTitle: true,
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
                        Text('Chào Jack Dawson',style: TextStyle(fontSize: 10.0,color: Colors.black)),
                        Text(
                          'Lưu ý để được hoàn tiền',
                          style: TextStyle(
                          color: Colors.red,
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                        ),
                        )
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 8.0,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 8.0,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(5.0),
                // height: double.infinity,
                width: double.infinity,
                child: ListView.separated(
                  shrinkWrap:true,
                  physics:NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: _listNotification.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    if(_listNotification[index].type =='type0'){
                      return ShowNotification(item:_listNotification[index]);
                    }
                    else if(_listNotification[index].type =='type1'){
                      return ShowNotification1(item:_listNotification[index]);
                    }else{
                      return ShowNotification2(item:_listNotification[index]);
                    }
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