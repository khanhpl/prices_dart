import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;

class WithdrawalRequestPage extends StatefulWidget {
  @override
  State<WithdrawalRequestPage> createState() {
    return WithdrawalRequestScreen();
  }
}

class WithdrawalRequestScreen extends State<WithdrawalRequestPage> {
  bool _isChecked = false;

  _ChooseBank(BuildContext context) {
    var size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          backgroundColor: Color.fromRGBO(0, 0, 0, 0),
          scrollable: true,
          content: Container(
            child: Column(
              children: [
                Container(
                  width: size.width * 0.9,
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 0,
                      size.width * 0.05, size.width * 0.03),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: _isChecked,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked == false
                                      ? _isChecked = true
                                      : _isChecked = false;
                                });
                              },
                              checkColor: Color(0xff5B9610),
                              activeColor: Colors.white,
                            ),
                            Text(
                              'Viettinbank-365489213',
                              style: TextStyle(
                                color: Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontSize: size.height * 0.022,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.06,
                        width: size.width * 0.8,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: size.width * 0.03, right: size.width * 0.03),
                        decoration: BoxDecoration(
                          color: Color(0xff333333),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xffDADADA)),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/addBank');
                          },
                          padding: EdgeInsets.all(0),
                          child: Text(
                            'Thêm tài khoản ngân hàng',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  width: size.width * 0.9,
                  padding: EdgeInsets.fromLTRB(size.width * 0.05,
                      size.height * 0.03, size.width * 0.05, size.width * 0.03),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.03),
                        child: Text(
                          'Chưa kết nối với tài khoản ngân hàng',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontSize: size.height * 0.022,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Container(
                        height: size.height * 0.06,
                        width: size.width * 0.8,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: size.width * 0.03, right: size.width * 0.03),
                        decoration: BoxDecoration(
                          color: Color(0xff333333),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xffDADADA)),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: EdgeInsets.all(0),
                          child: Text(
                            'Thêm tài khoản ngân hàng',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
        width: size.width,
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
                      Navigator.pushNamed(context, '/accountPage');
                      // Navigator.pop(context);
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
                            'Số dư trong ví có thể rút',
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
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                padding: EdgeInsets.fromLTRB(size.width * 0.03,
                    size.height * 0.02, size.width * 0.03, size.height * 0.03),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chọn ngân hàng',
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w400,
                        fontSize: size.height * 0.022,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      height: size.height * 0.06,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          left: size.width * 0.03, right: size.width * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffDADADA)),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          _ChooseBank(context);
                        },
                        padding: EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Sacombank - 312678936',
                                style: TextStyle(
                                    fontSize: size.height * 0.024,
                                    color: Color(0xff666666),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              child: ImageIcon(
                                AssetImage(
                                    'assets/account_page/arrow_down.png'),
                                size: size.height * 0.024,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    RichText(
                      text: TextSpan(
                          text: 'Nhập số tiền ',
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w400,
                            fontSize: size.height * 0.022,
                          ),
                          children: [
                            TextSpan(
                              text: '(Có thể rút tối đa xxx đ)',
                              style: TextStyle(
                                color: Color(0xFFFE3300),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      height: size.height * 0.06,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          left: size.width * 0.03, right: size.width * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffDADADA)),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration.collapsed(
                                hintText: '360.000',
                                hintStyle: TextStyle(
                                  fontSize: size.height * 0.024,
                                  color: Color(0xff666666),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'đ',
                              style: TextStyle(
                                color: Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontSize: size.height * 0.024,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      'Nội dung',
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w400,
                        fontSize: size.height * 0.022,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      height: size.height * 0.06,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          left: size.width * 0.03, right: size.width * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffDADADA)),
                      ),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'tien prices',
                          hintStyle: TextStyle(
                            fontSize: size.height * 0.024,
                            color: Color(0xff666666),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.06),
              Container(
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Color(0xff333333),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlatButton(
                  child: Text(
                    'Yêu cầu rút tiền',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height * 0.023,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/withdrawalProcessScreen');
                  },
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                width: size.width * 0.88,
                child: Text(
                  'Lưu ý: Prices sẽ xử lý tất cả các giao dịch rút tiền từ thứ 6 hàng tuần',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.height * 0.024,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff666666),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.08),
              Container(
                width: size.width,
                margin: EdgeInsets.only(left: size.width * 0.03),
                child: Text(
                  'Lịch sử rút tiền',
                  style: TextStyle(
                    fontSize: size.height * 0.03,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff333333),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.1,
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
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: size.height * 0.1,
                        child: Image.asset(
                          'assets/account_page/withdrawal_icon.png',
                          width: size.width * 0.08,
                          height: size.height * 0.08,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rút tiền từ túi',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height * 0.006),
                            Text(
                              '21/06 - 14:02',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height * 0.006),
                            Text(
                              'Đang xử lý',
                              style: TextStyle(
                                color: Color(0xff5B9611),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
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
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.1,
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
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: size.height * 0.1,
                        child: Image.asset(
                          'assets/account_page/withdrawal_icon.png',
                          width: size.width * 0.08,
                          height: size.height * 0.08,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rút tiền từ túi',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height * 0.006),
                            Text(
                              '21/06 - 14:02',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height * 0.006),
                            Text(
                              'Thành công',
                              style: TextStyle(
                                color: Color(0xff5B9611),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
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
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.1,
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
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: size.height * 0.1,
                        child: Image.asset(
                          'assets/account_page/withdrawal_icon.png',
                          width: size.width * 0.08,
                          height: size.height * 0.08,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rút tiền từ túi',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height * 0.006),
                            Text(
                              '21/06 - 14:02',
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height * 0.006),
                            Text(
                              'Thất bại',
                              style: TextStyle(
                                color: Color(0xffFF3300),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w400,
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
              ),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
