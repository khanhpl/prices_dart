import 'package:flutter/material.dart';
import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;
import 'package:prices_dart/screens/account/withdrawal_history/withdrawal.dart';

class ShowWithdrawalDetailOnHistory extends StatefulWidget{
  Withdrawal withdrawal;
  ShowWithdrawalDetailOnHistory({required this.withdrawal});
  @override
  State<ShowWithdrawalDetailOnHistory> createState() {
    return ShowWithdrawalDetailOnHistoryState(withdrawal: this.withdrawal);
  }

}

class ShowWithdrawalDetailOnHistoryState extends State<ShowWithdrawalDetailOnHistory>{
  Withdrawal withdrawal;
  ShowWithdrawalDetailOnHistoryState({required this.withdrawal});

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
                'Rút tiền từ túi',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.032,
                ),
              ),

              SizedBox(height: size.height * 0.02),
              Text(
                'Trạng thái: ' + withdrawal.status,
                style: TextStyle(
                  color: withdrawal.isStatus == true ? Color(0xff5B9610) : Color(0xffFF3300),
                  fontWeight: FontWeight.w400,
                  fontSize: size.height * 0.022,
                ),
              ),
              SizedBox(height: size.height * 0.03),
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
                            'Mã giao dịch',
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
                              withdrawal.widrawalID,
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
                            'Nguồn tiền',
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
                              withdrawal.widrawalSource,
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
                            'Số tiền',
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
                              withdrawal.total,
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
                            'Ngân hàng',
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
                              withdrawal.bank,
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
                            'Số tài khoản',
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
                              withdrawal.bankID,
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
                            'Người nhận',
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
                              withdrawal.bankReceiver,
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
                            'Nội dung',
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
                              withdrawal.content,
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
                            'Thời gian',
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
                              withdrawal.time,
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
                            'Trạng thái',
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
                              withdrawal.status,
                              style: TextStyle(
                                color: withdrawal.isStatus == true ? Color(0xff5B9610) : Color(0xffFF3300),
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
                padding: EdgeInsets.fromLTRB(size.width*0.03, 0, size.width*0.03, 0),
                decoration: BoxDecoration(
                  color: Color(0xff333333),
                  borderRadius: BorderRadius.circular(25),
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