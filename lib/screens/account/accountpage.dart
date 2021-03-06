import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;
import '../../globals.dart' as globals;

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() {
    return AccountPageState();
  }
}

class AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _rateColor = Color.fromRGBO(91, 150, 16, 1.0);
    var _primaryColor = Constants.primaryColor;
    bool isAvatarChecked = false;

    setState(() {
      isAvatarChecked = globals.isAvatarChecked;
    });

    List<CustomColor> _colorList = [
      CustomColor(customColor: Color.fromRGBO(244, 250, 250, 1)),
      CustomColor(customColor: Color.fromRGBO(245, 249, 249, 1)),
      CustomColor(customColor: Color.fromRGBO(247, 249, 249, 1)),
      CustomColor(customColor: Color.fromRGBO(248, 248, 248, 1)),
      CustomColor(customColor: Color.fromRGBO(250, 248, 248, 1)),
      CustomColor(customColor: Color.fromRGBO(252, 247, 247, 1)),
      CustomColor(customColor: Color.fromRGBO(254, 246, 246, 1)),
    ];
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
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: size.width * 0.03),
                    Container(
                        child: IconButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Navigator.pushNamed(context, '/mainPage');
                      },
                      icon: ImageIcon(
                        AssetImage('assets/account_page/cancel.png'),
                        size: size.height * 0.04,
                        color: Color(0xFFBDBDBD),
                      ),
                    )),
                    Spacer(),
                    Text(
                      'Ch??o, Lu??n Phan',
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),

                    globals.isAvatarChecked == false
                        ? Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/account_page/jack.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: size.height * 0.07,
                            height: size.height * 0.07,
                          )
                        : Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: FileImage(globals.avatarFile),
                                // image: AssetImage('assets/account_page/jack.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: size.height * 0.07,
                            height: size.height * 0.07,
                          ),

                    // Container(
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.circle,
                    //     image: DecorationImage(
                    //       image: AssetImage('assets/account_page/jack.jpg'),
                    //       fit: BoxFit.fill,
                    //     ),
                    //   ),
                    //   width: size.height * 0.07,
                    //   height: size.height * 0.07,
                    // ),

                    SizedBox(width: size.width * 0.03),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: size.width * 0.03),
                child: Text(
                  'T??i kho???n',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
                margin: EdgeInsets.fromLTRB(
                    size.width * 0.03, 5.0, size.width * 0.03, 5.0),
                // padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/balancePage');
                  },
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
                              'S??? d?? trong v??',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '365.150??',
                              style: TextStyle(
                                  color: Color(0xFFFE3300),
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
                margin: EdgeInsets.fromLTRB(
                    size.width * 0.03, 5.0, size.width * 0.03, 5.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      for (var color in _colorList) color.customColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/balancePage');
                  },
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
                              '??ang x??? l??',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '65.150??',
                              style: TextStyle(
                                  color: Color(0xFFFE3300),
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
                margin: EdgeInsets.fromLTRB(
                    size.width * 0.03, 5.0, size.width * 0.03, 5.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      for (var color in _colorList) color.customColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/orderHistory');
                  },
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
                              'L???ch s??? ????n h??ng ',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '75 ????n h??ng th??nh c??ng',
                              style: TextStyle(
                                color: Color(0xFF689733),
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
                margin: EdgeInsets.fromLTRB(
                    size.width * 0.03, 5.0, size.width * 0.03, 5.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      for (var color in _colorList) color.customColor,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/withDrawalHistory');
                  },
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
                              'L???ch s??? r??t ti???n ',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '05 giao d???ch th??nh c??ng',
                              style: TextStyle(
                                color: Color(0xFF689733),
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Option(
                icon: Icons.account_box_rounded,
                optionTitle: 'C??i ?????t t??i kho???n',
                link: '/personalSettingPage',
                botLeft: 0.0,
                botRight: 0.0,
                topLeft: 10.0,
                topRight: 10.0,
              ),
              Option(
                icon: Icons.favorite,
                optionTitle: '???? y??u th??ch',
                link: '/favoritePage',
                botLeft: 0.0,
                botRight: 0.0,
                topLeft: 0.0,
                topRight: 0.0,
              ),
              Option(
                icon: Icons.settings,
                optionTitle: 'C??i ?????t chung',
                link: '/generalSettingPage',
                botLeft: 0.0,
                botRight: 0.0,
                topLeft: 0.0,
                topRight: 0.0,
              ),
              Option(
                icon: Icons.comment,
                optionTitle: 'G??p ?? cho Prices',
                link: '/feedbackForPrices',
                botLeft: 0.0,
                botRight: 0.0,
                topLeft: 0.0,
                topRight: 0.0,
              ),
              Option(
                icon: Icons.money,
                optionTitle: 'Ch??nh s??ch ho??n ti???n',
                link: '/refundPolicy',
                botLeft: 10.0,
                botRight: 10.0,
                topLeft: 0.0,
                topRight: 0.0,
              ),
              SizedBox(height: 40.0),
              Container(
                height: size.height * 0.15,
                margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
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
                      height: size.height * 0.1,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/account_page/price_logo.PNG'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '????nh gi?? app Prices',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.0),
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
                            color: Color(0xFFBDBDBD),
                            // size: 10.0,
                          ),
                          onRatingUpdate: (rating) {},
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
                        onPressed: () {},
                        child: Text(
                          '????nh gi?? ngay',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 10.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  IconData icon;
  String optionTitle;
  String link;
  var topLeft;
  var topRight;
  var botLeft;
  var botRight;

  Option(
      {required this.icon,
      required this.optionTitle,
      required this.link,
      required this.topLeft,
      required this.topRight,
      required this.botLeft,
      required this.botRight});

  @override
  Widget build(BuildContext context) {
    List<CustomColor> _colorList = [
      CustomColor(customColor: Color.fromRGBO(244, 250, 250, 1)),
      CustomColor(customColor: Color.fromRGBO(245, 249, 249, 1)),
      CustomColor(customColor: Color.fromRGBO(247, 249, 249, 1)),
      CustomColor(customColor: Color.fromRGBO(248, 248, 248, 1)),
      CustomColor(customColor: Color.fromRGBO(250, 248, 248, 1)),
      CustomColor(customColor: Color.fromRGBO(252, 247, 247, 1)),
      CustomColor(customColor: Color.fromRGBO(254, 246, 246, 1)),
    ];
    var size = MediaQuery.of(context).size;
    var _iconColor = Color.fromRGBO(102, 102, 102, 1.0);
    return Container(
      height: size.height * 0.08,
      margin:
          EdgeInsets.fromLTRB(size.width * 0.03, 1.0, size.width * 0.03, 1.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            for (var color in _colorList) color.customColor,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(this.topLeft),
            topRight: Radius.circular(this.topRight),
            bottomLeft: Radius.circular(this.botLeft),
            bottomRight: Radius.circular(this.botRight)),
      ),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, link);
        },
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: _iconColor,
            ),
            SizedBox(width: 5.0),
            Text(
              optionTitle,
              style: TextStyle(
                color: _iconColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
