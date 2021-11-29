import 'package:flutter/material.dart';

import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;

class AppInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _primaryColor = Constants.primaryColor;
    List<CustomColor> _colorList = [
      CustomColor(customColor: Color.fromRGBO(244, 250, 250, 1)),
      CustomColor(customColor: Color.fromRGBO(245, 249, 249, 1)),
      CustomColor(customColor: Color.fromRGBO(247, 249, 249, 1)),
      CustomColor(customColor: Color.fromRGBO(248, 248, 248, 1)),
      CustomColor(customColor: Color.fromRGBO(250, 248, 248, 1)),
      CustomColor(customColor: Color.fromRGBO(252, 247, 247, 1)),
      CustomColor(customColor: Color.fromRGBO(254, 246, 246, 1)),
    ];
    return Material(
      child: Container(
        color: _primaryColor,
        padding:
            EdgeInsets.fromLTRB(size.width * 0.03, 0, size.width * 0.03, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.15,
                alignment: Alignment.centerLeft,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: ImageIcon(
                      AssetImage('assets/account_page/cancel.png'),
                      size: size.height * 0.04,
                      color: Color(0xFFBDBDBD),
                    ),
                  ),
                ),
              ),
              Text(
                'Thông tin ứng dụng',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.032,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                height: size.height * 0.1,
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.03, 0, size.width * 0.03, 0),
                decoration: BoxDecoration(
                  // color: _itemColor,
                  gradient: LinearGradient(
                    colors: [
                      for (var color in _colorList) color.customColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),

                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Phiên bản',
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w400,
                        fontSize: size.height*0.02
                      ),
                    ),
                    Spacer(),
                    Text(
                      '1.01.265',
                      style: TextStyle(
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontSize: size.height*0.02
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                height: size.height * 0.1,
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.03, 0, size.width * 0.03, 0),
                decoration: BoxDecoration(
                  // color: _itemColor,
                  gradient: LinearGradient(
                    colors: [
                      for (var color in _colorList) color.customColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffDADADA),
                    ),
                  ),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Bản cập nhật',
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w400,
                          fontSize: size.height*0.02
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Bản mới nhất',
                      style: TextStyle(
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontSize: size.height*0.02
                      ),
                    ),

                  ],
                ),
              ),

              Container(
                height: size.height * 0.1,
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.03, 0, size.width * 0.03, 0),
                decoration: BoxDecoration(
                  // color: _itemColor,
                  gradient: LinearGradient(
                    colors: [
                      for (var color in _colorList) color.customColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffDADADA),
                    ),
                    bottom: BorderSide(
                      color: Color(0xffDADADA),
                      width: 0.8,
                    ),
                  ),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Bản cập nhật',
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w400,
                          fontSize: size.height*0.02
                      ),
                    ),
                    Spacer(),
                    Text(
                      '1.2 ',
                      style: TextStyle(
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontSize: size.height*0.02
                      ),
                    ),
                    Container(
                      height: size.height * 0.045,
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: Color(0xffDADADA)),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cập nhật',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: size.height * 0.015,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.1,
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.03, 0, size.width * 0.03, 0),
                decoration: BoxDecoration(
                  // color: _itemColor,
                  gradient: LinearGradient(
                    colors: [
                      for (var color in _colorList) color.customColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),

                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Facebook',
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w400,
                          fontSize: size.height*0.02
                      ),
                    ),
                    Spacer(),
                    Text(
                      'fb.com/prices.vn',
                      style: TextStyle(
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontSize: size.height*0.02
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: size.height * 0.06),
              Container(
                width: size.width * 0.3,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Color(0xff333333),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlatButton(

                  child: Text(
                    'Trang chủ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mainPage');
                  },
                ),
              ),
              SizedBox(height: size.height * 0.06),

            ],
          ),
        ),
      ),
    );
  }
}
