import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../../constants.dart' as Constants;

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  late TabController _controller;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _primaryColor = Constants.primaryColor;
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    var _facebookColor = Constants.facebookColor;
    return Material(
      child: Container(
        color: _primaryColor,
        width: _pageWidth,
        height: _pageHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: _pageHeight * 0.07),
            Container(
              height: _pageHeight * 0.25,
              width: _pageWidth * 0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/welcome_page/logo.png',
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: _pageHeight * 0.05,
                      width: _pageWidth * 0.23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ),
                      ),
                      child: FlatButton(
                        child: Text(
                          'Bỏ qua',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w400,
                            fontSize: _pageHeight * 0.02,
                          ),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/mainPage');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: _pageHeight * 0.03),
            Container(
              child: DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black45,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: _pageHeight * 0.032,
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: _pageHeight * 0.026,
                        ),
                        isScrollable: true,
                        indicatorColor: Colors.black,
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(width: 3.0),
                          insets: EdgeInsets.symmetric(
                              horizontal: _pageHeight * 0.02),
                        ),
                        tabs: [
                          Container(
                            child: Text('Đăng nhập'),
                          ),
                          Container(
                            child: Text('Đăng ký'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: _pageHeight * 0.53, //height of TabBarView

                      child: TabBarView(
                        children: <Widget>[
                          Container(
                            width: _pageWidth,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.06,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        fontSize: _pageHeight * 0.02,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                    width: _pageWidth * 0.7,
                                    height: _pageHeight * 0.06,
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: _pageWidth * 0.5,
                                          child: TextField(
                                            decoration:
                                                InputDecoration.collapsed(
                                              hintText: 'Mật Khẩu',
                                              hintStyle: TextStyle(
                                                fontSize: _pageHeight * 0.02,
                                                color: Colors.black26,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: ImageIcon(
                                              AssetImage(
                                                  'assets/welcome_page/eye.png'),
                                              color: Colors.black26,
                                              size: _pageHeight * 0.025,
                                            ),
                                          ),
                                        ),
                                      ],

                                    ),
                                ),

                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.black87,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Đăng nhập',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: _pageHeight * 0.02,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/mainPage');
                                    },
                                  ),
                                ),
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Quên mật khẩu ?',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: _pageHeight * 0.02,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                    onPressed: () {
                                        Navigator.pushNamed(context, '/forgotPassword');
                                    },

                                  ),
                                ),
                                SizedBox(height: _pageHeight * 0.07),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.03,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(right: 5),
                                          child: Divider(
                                            color: Colors.black87,
                                            thickness: 1.5,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Hoặc đăng nhập bằng",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: _pageHeight * 0.02,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Divider(
                                            color: Colors.black87,
                                            thickness: 1.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.06,
                                  decoration: BoxDecoration(
                                    color: _facebookColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: FlatButton(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        ImageIcon(
                                          AssetImage('assets/welcome_page/fbicon.png'),
                                          size: _pageHeight * 0.04,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          ' Facebook',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: _pageHeight * 0.02,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: _pageWidth,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.06,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        fontSize: _pageHeight * 0.02,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                    width: _pageWidth * 0.7,
                                    height: _pageHeight * 0.06,
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: _pageWidth * 0.5,
                                          child: TextField(
                                            decoration:
                                                InputDecoration.collapsed(
                                              hintText: 'Mật Khẩu',
                                              hintStyle: TextStyle(
                                                fontSize: _pageHeight * 0.02,
                                                color: Colors.black26,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: ImageIcon(
                                              AssetImage(
                                                  'assets/welcome_page/eye.png'),
                                              color: Colors.black26,
                                              size: _pageHeight * 0.025,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                    width: _pageWidth * 0.7,
                                    height: _pageHeight * 0.06,
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: _pageWidth * 0.5,
                                          child: TextField(
                                            decoration:
                                                InputDecoration.collapsed(
                                              hintText: 'Nhập lại mật khẩu',
                                              hintStyle: TextStyle(
                                                fontSize: _pageHeight * 0.02,
                                                color: Colors.black26,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: ImageIcon(
                                              AssetImage(
                                                  'assets/welcome_page/eye.png'),
                                              color: Colors.black26,
                                              size: _pageHeight * 0.025,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.black87,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Đăng ký',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: _pageHeight * 0.02,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                    onPressed: () {
                                      Navigator.pushNamed(context, '/registerSuccess');
                                    },

                                  ),
                                ),
                                SizedBox(height: _pageHeight * 0.07),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.03,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(right: 5),
                                          child: Divider(
                                            color: Colors.black87,
                                            thickness: 1.5,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Hoặc đăng ký bằng",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: _pageHeight * 0.02,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Divider(
                                            color: Colors.black87,
                                            thickness: 1.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: _pageHeight * 0.025),
                                Container(
                                  width: _pageWidth * 0.7,
                                  height: _pageHeight * 0.06,
                                  decoration: BoxDecoration(
                                    color: _facebookColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: FlatButton(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        ImageIcon(
                                          AssetImage('assets/welcome_page/fbicon.png'),
                                          size: _pageHeight * 0.04,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          ' Facebook',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: _pageHeight * 0.02,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
