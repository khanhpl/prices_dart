import 'package:flutter/material.dart';

import 'notification.dart';

class ShowNotification extends StatelessWidget{
  NotificationInfo item;

  ShowNotification({required this.item});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(item.name,style: TextStyle(color: Colors.black,fontSize: 11.0),),
                Text(item.content,style: TextStyle(color: Colors.black,fontSize: 13.0,fontWeight: FontWeight.bold),)
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
          ]
      ),
    );
  }

}

class ShowNotification1 extends StatelessWidget{
  NotificationInfo item;

  ShowNotification1({required this.item});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(item.name,style: TextStyle(color: Colors.green,fontSize: 11.0),),
                Text(item.content,style: TextStyle(color: Colors.black,fontSize: 13.0,fontWeight: FontWeight.bold),)
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
          ]
      ),
    );
  }

}

class ShowNotification2 extends StatelessWidget{
  NotificationInfo item;

  ShowNotification2({required this.item});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(item.name,style: TextStyle(color: Colors.black,fontSize: 11.0),),
                Text(item.content,style: TextStyle(color: Colors.black,fontSize: 13.0,fontWeight: FontWeight.bold),)
              ],
            ),
            Spacer(),
            Container(
              height: size.height *0.05,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.grey),
              ),
              child: TextButton(
                child: Text('Cập nhật',style: TextStyle(color: Colors.black26),),
                onPressed: (){},
              ),
            ),
          ]
      ),
    );
  }

}