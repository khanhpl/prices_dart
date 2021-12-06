
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;

class BalancePage extends StatefulWidget {
  @override
  State<BalancePage> createState() {
    // TODO: implement createState
    return _BalancePageState();
  }
}

class _BalancePageState extends State<BalancePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        width: size.width,
        height: size.height,
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
                      Navigator.pushNamed(context, '/accountPage');
                  },
                  icon: ImageIcon(
                    AssetImage('assets/account_page/cancel.png'),
                    size: size.height * 0.04,
                    color: Color(0xFFBDBDBD),
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.1,
              margin: EdgeInsets.fromLTRB(
                  size.width * 0.03, 0.0, size.width * 0.03, 0.0),
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
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Số dư trong túi',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '365.150đ',
                          style: TextStyle(
                              color: Color(0xFFFE3300),
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: size.height *0.028, bottom: size.height*0.028),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFE3300),
                    ),
                    child: TextButton(
                      onPressed: () {
                          Navigator.pushNamed(context, '/withdrawalScreen');
                      },
                      child: Text(
                        'Rút tiền',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.height * 0.015,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.1,
              margin: EdgeInsets.fromLTRB(
                  size.width * 0.03, 0.0, size.width * 0.03, 0.0),
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
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Số dư trong túi',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '0đ',
                          style: TextStyle(
                              color: Color(0xFFFE3300),
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: size.height *0.028, bottom: size.height*0.028),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(color: Color(0xffC4C4C4)),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Rút tiền',
                        style: TextStyle(
                          color: Color(0xffC4C4C4),
                          fontSize: size.height * 0.015,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.1,
              margin: EdgeInsets.fromLTRB(
                  size.width * 0.03, 0.0, size.width * 0.03, 0.0),
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
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Đang xử lý',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '65.150đ',
                          style: TextStyle(
                              color: Color(0xFFFE3300),
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  size.width * 0.03, 0.0, size.width * 0.03, 0.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xffDADADA),
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(size.width * 0.03, 0, 0, 0),
                decoration: BoxDecoration(
                  // color: _itemColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      for (var color in _colorList) color.customColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: size.height * 0.1,
                            child: Image.asset(
                              'assets/account_page/order_icon.png',
                              // width: size.width * 0.12,
                              // height: size.height * 0.06,
                              width: size.width * 0.08,
                              height: size.height * 0.08,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: size.height * 0.1,
                              margin: EdgeInsets.only(left: size.width * 0.02),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xffDADADA),
                                  ),
                                ),
                              ),

                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Đơn hàng từ shopee #473952375',
                                      style: TextStyle(
                                        color: Color(0xff333333),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.006),
                                    Text(
                                      'Số tiền hoàn lại: 35.150đ',
                                      style: TextStyle(
                                        color: Color(0xFFFE3300),
                                        fontSize: size.height * 0.016,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    // SizedBox(height: size.height * 0.006),
                                    Container(
                                      margin: EdgeInsets.only(right: size.width*0.03),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '21/06 - 14:02 | ',
                                              style: TextStyle(
                                                color: Color(0xff333333),
                                                fontSize: size.height * 0.016,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'Thành công',
                                                  style: TextStyle(
                                                    color: Color(0xff84A82C),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '250.000đ',
                                            style: TextStyle(
                                              color: Color(0xff333333),
                                              fontSize: size.height * 0.02,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          CircleAvatar(
                                            radius: size.height * 0.016,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.black,
                                              size: size.height * 0.016,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: size.height * 0.1,
                            child: Image.asset(
                              'assets/account_page/order_icon.png',
                              // width: size.width * 0.12,
                              // height: size.height * 0.06,
                              width: size.width * 0.08,
                              height: size.height * 0.08,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: size.height * 0.1,
                              margin: EdgeInsets.only(left: size.width * 0.02),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Đơn hàng từ shopee #4735659875',
                                      style: TextStyle(
                                        color: Color(0xff333333),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.006),
                                    Text(
                                      'Số tiền hoàn lại: 30.000đ',
                                      style: TextStyle(
                                        color: Color(0xFFFE3300),
                                        fontSize: size.height * 0.016,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    // SizedBox(height: size.height * 0.006),
                                    Container(
                                      margin: EdgeInsets.only(right: size.width*0.03),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '21/06 - 14:02 | ',
                                              style: TextStyle(
                                                color: Color(0xff333333),
                                                fontSize: size.height * 0.016,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'Thành công',
                                                  style: TextStyle(
                                                    color: Color(0xff84A82C),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '250.000đ',
                                            style: TextStyle(
                                              color: Color(0xff333333),
                                              fontSize: size.height * 0.02,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          CircleAvatar(
                                            radius: size.height * 0.016,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.black,
                                              size: size.height * 0.016,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.1,
              margin: EdgeInsets.fromLTRB(
                  size.width * 0.03, 0.0, size.width * 0.03, 0.0),
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
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Đang xử lý',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '0đ',
                          style: TextStyle(
                              color: Color(0xFFFE3300),
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
