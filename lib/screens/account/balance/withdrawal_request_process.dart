import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;

class WithdrawalRequestProcessPage extends StatefulWidget {
  @override
  State<WithdrawalRequestProcessPage> createState() {
    return WithdrawalRequestProcessState();
  }
}

class WithdrawalRequestProcessState
    extends State<WithdrawalRequestProcessPage> {
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
        width: size.width,
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
                'R??t ti???n ??ang ???????c x??? l??',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.032,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                width: size.width * 0.89,
                child: Text(
                  'Prices s??? x??? l?? t???t c??? c??c giao d???ch r??t ti???n t??? th??? 6 h??ng tu???n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontSize: size.height * 0.022,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                margin: EdgeInsets.fromLTRB(
                    size.width * 0.03, 0.0, size.width * 0.03, 0.0),
                padding: EdgeInsets.fromLTRB(size.width * 0.03,
                    size.height * 0.03, size.width * 0.03, size.height * 0.03),
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                            'M?? giao d???ch',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              '#23164669131',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                            'Ngu???n ti???n',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              'V?? prices c???a b???n',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height*0.03),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                              'S??? ti???n',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                                '360.000??',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height*0.03),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                            'Ng??n h??ng',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              'Sacombank',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height*0.03),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                            'S??? t??i kho???n',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              '6958489556',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height*0.03),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                            'Ng?????i nh???n',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              'PHAN THANH LUAN',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height*0.03),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                            'N???i dung',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              'Tien Prices',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height*0.03),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                            'Th???i gian',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              '20/06-14:02',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height*0.03),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.38,
                          child: Text(
                            'Tr???ng th??i',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              '??ang x??? l??',
                              style: TextStyle(
                                color: Color(0xff5B9610),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: size.height * 0.06),
              Container(
                // height: size.height * 0.06,
                padding: EdgeInsets.only(left: size.width*0.04, right: size.width*0.04),
                decoration: BoxDecoration(
                  color: Color(0xff333333),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: FlatButton(
                  child: Text(
                    'Trang ch???',
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
