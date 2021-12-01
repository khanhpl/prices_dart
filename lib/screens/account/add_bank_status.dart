
import 'package:flutter/material.dart';
import 'package:prices_dart/constants.dart' as Constants;

class AddBankStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _primaryColor = Constants.primaryColor;
    return Material(
      color: _primaryColor,
      child: Container(
        padding:
        EdgeInsets.fromLTRB(size.width * 0.05, 0.0, size.width * 0.05, 0.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.12,
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
              SizedBox(height: size.height * 0.2),
              Container(
                padding: EdgeInsets.fromLTRB(size.width*0.1, 0, size.width*0.1, 0),
                child: Text(
                  'Thêm tài khoản ngân hàng thành công',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff5B9610),
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.034,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.06),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          size.width * 0.015, 0, size.width * 0.015, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: FlatButton(
                        child: Text(
                          'Rút tiền',
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: size.height * 0.024,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/withdrawalScreen');
                        },
                      ),
                    ),
                    SizedBox(width: size.width*0.1),
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          size.width * 0.015, 0, size.width * 0.015, 0),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
