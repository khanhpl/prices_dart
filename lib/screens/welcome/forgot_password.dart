
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart' as Constants;
class ForgotPassword extends StatelessWidget{
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
                'Quên mật khẩu',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: _pageHeight * 0.032,
                ),
              ),
            ),
            SizedBox(height: _pageHeight*0.03),
            Container(
              width: _pageWidth * 0.7,
              height: _pageHeight * 0.06,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Nhập email bạn đã đăng ký trước đó!',
                  hintStyle: TextStyle(
                    fontSize: _pageHeight * 0.02,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(height: _pageHeight*0.03),
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
                        'Hủy',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: _pageHeight * 0.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(width: _pageWidth*0.04),
                  Container(
                    width: _pageWidth * 0.33,
                    height: _pageHeight * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      child: Text(
                        'Khôi phục',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _pageHeight * 0.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sendRequestPassword');
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