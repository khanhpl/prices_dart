import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart' as Constants;

class RegisterSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _primaryColor = Constants.primaryColor;
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        width: _pageWidth,
        height: _pageHeight,
        decoration: BoxDecoration(
          color: _primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Đăng ký thành công',
                style: TextStyle(
                  color: Color.fromRGBO(135,185,129,1),
                  fontWeight: FontWeight.w500,
                  fontSize: _pageHeight * 0.032,
                ),
              ),
            ),
            SizedBox(height: _pageHeight * 0.03),
            Container(
              width: _pageWidth * 0.7,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'Chúc mừng bạn đã đăng ký thành công và trở thành thành viên của cộng đồng ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: _pageHeight * 0.02,
                  ),
                  children: [
                    TextSpan(
                      text: 'Prices.vn',
                      style: TextStyle(
                        color: Color.fromRGBO(247,84,14,1),
                        fontWeight: FontWeight.w400,
                        fontSize: _pageHeight * 0.02,
                      ),
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(height: _pageHeight * 0.03),
            Container(
              width: _pageWidth * 0.7,
              child: Text(
                'Truy cập vào email và vui lòng làm theo hướng dẫn trong email bạn nhận được.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: _pageHeight * 0.02,
                ),
              ),
            ),
            SizedBox(height: _pageHeight * 0.03),
            Container(
              width: _pageWidth * 0.7,
              height: _pageHeight * 0.06,
              child: Row(
                children: [
                  Container(
                    width: _pageWidth * 0.33,
                    height: _pageHeight * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(
                      //   color: Colors.grey.shade400,
                      // ),
                    ),
                    child: FlatButton(
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: _pageHeight * 0.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: _pageWidth * 0.04),
                  Container(
                    width: _pageWidth * 0.33,
                    height: _pageHeight * 0.06,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(91, 150, 16, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      child: Text(
                        'Xong',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _pageHeight * 0.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginScreen');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
