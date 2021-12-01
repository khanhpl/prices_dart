
import 'package:flutter/material.dart';
import 'package:prices_dart/constants.dart' as Constants;

class FeedbackSuccessful extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.start,
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
              Text(
                'Góp ý cho prices',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.032,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Cảm ơn góp ý của bạn. Góp ý này sẻ được dùng để cải thiện Prices ngày càng tốt hơn.',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: size.height * 0.022,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Trân trọng',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: size.height * 0.022,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                width: size.width * 0.3,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Color(0xff333333),
                  borderRadius: BorderRadius.circular(20),
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
      ),
    );
  }
}
