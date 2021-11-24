import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../colors.dart';
import '../../constants.dart' as Constants;

class GeneralSettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<CustomColor> _colorList = [
      CustomColor(customColor: Color.fromRGBO(244,250,250,1)),
      CustomColor(customColor: Color.fromRGBO(245,249,249,1)),
      CustomColor(customColor: Color.fromRGBO(247,249,249,1)),
      CustomColor(customColor: Color.fromRGBO(248,248,248,1)),
      CustomColor(customColor: Color.fromRGBO(250,248,248,1)),
      CustomColor(customColor: Color.fromRGBO(252,247,247,1)),
      CustomColor(customColor: Color.fromRGBO(254,246,246,1)),
    ];
    var _primaryColor = Constants.primaryColor;
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        width: _pageWidth,
        height: _pageHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
          ],
        ),
      ),
    );
  }

}