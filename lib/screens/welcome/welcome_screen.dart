import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../constants.dart' as Constants;

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() {
    return _WelcomeScreenState();
  }
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    var _primaryColor = Constants.primaryColor;
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return Material(
      color: _primaryColor,
      child: Container(
        width: _pageWidth,
        height: _pageHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: _pageHeight * 0.03),
            Container(
              child: Image.asset(
                'assets/welcome_page/welcome.png',
                width: _pageWidth,
                height: _pageHeight*0.3,
              ),
            ),
            SizedBox(height: _pageHeight * 0.03),
            Container(
              height: _pageHeight*0.06,

              child: Text(
                'Prices - Mua sắm hoàn tiền vui vẻ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                  fontSize: _pageHeight*0.026,
                ),
              ),
            ),

            SizedBox(height: _pageHeight*0.15),
            Container(
              height: _pageHeight * 0.06,
              width: _pageWidth * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/loginScreen');
                },
                child: Text(
                  'Tiếp theo',
                  style: TextStyle(
                    fontSize: _pageHeight * 0.02,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
