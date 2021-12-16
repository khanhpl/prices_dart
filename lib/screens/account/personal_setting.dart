import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;
import '../../globals.dart' as globals;

class PersonalSetting extends StatefulWidget {
  @override
  State<PersonalSetting> createState() {
    return PersonalSettingState();
  }
}

class PersonalSettingState extends State<PersonalSetting> {
  bool _isGenderMale = false;
  bool _isGenderFemale = false;
  late File imageFile;

  bool _picIsChose = false;

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
                height: size.height * 0.12,
                alignment: Alignment.centerLeft,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Navigator.pushNamed(context, '/accountPage');
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
                'Chỉnh sửa tài khoản',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.032,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                child: FlatButton(
                  onPressed: () {
                    _getFromGallery();
                  },
                  child: globals.isAvatarChecked == false
                      ? Container(
                          width: size.height * 0.12,
                          height: size.height * 0.12,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(bottom: size.height * 0.01),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/account_page/jack.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Icon(
                            Icons.add_a_photo,
                            color: _primaryColor,
                          ),
                        )
                      : Container(
                          width: size.height * 0.12,
                          height: size.height * 0.12,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(bottom: size.height * 0.01),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: FileImage(globals.avatarFile),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Icon(
                            Icons.add_a_photo,
                            color: _primaryColor,
                          ),
                        ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Giới tính',
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: size.height * 0.02,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: _isGenderMale,
                            onChanged: (value) {
                              setState(() {
                                _isGenderMale = true;
                                _isGenderFemale = false;
                              });
                            },
                            checkColor: Color(0xff5B9610),
                            activeColor: Colors.white,
                          ),
                          Text(
                            'Nam',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: size.width * 0.1),
                          Checkbox(
                            value: _isGenderFemale,
                            onChanged: (value) {
                              setState(() {
                                _isGenderMale = false;
                                _isGenderFemale = true;
                              });
                            },
                            checkColor: Color(0xff5B9610),
                            activeColor: Colors.white,
                          ),
                          Text(
                            'Nữ',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      'Tên hiển thị',
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: size.height * 0.02,
                        fontWeight: FontWeight.w400,
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
                        controller: TextEditingController(text: 'luanknooc'),
                        decoration: InputDecoration.collapsed(
                          hintText: '',
                          hintStyle: TextStyle(
                            fontSize: size.height * 0.02,
                            color: Color(0xff666666),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: size.height * 0.03),
                    Container(
                        child: RichText(
                      text: TextSpan(
                        text: 'Email ',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: size.height * 0.02,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: '(Đã xác nhận) ',
                            style: TextStyle(
                              color: Color(0xff5B9610),
                            ),
                          ),
                          TextSpan(
                            text: '(Chưa xác nhận)',
                            style: TextStyle(
                              color: Color(0xffFF3300),
                            ),
                          ),
                        ],
                      ),
                    )),
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
                          hintText: 'luanknooc@gmail.com',
                          hintStyle: TextStyle(
                            fontSize: size.height * 0.02,
                            color: Color(0xffDADADA),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                        child: RichText(
                      text: TextSpan(
                        text: 'Số điện thoại ',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: size.height * 0.02,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: '(Đã kích hoạt) ',
                            style: TextStyle(
                              color: Color(0xff5B9610),
                            ),
                          ),
                        ],
                      ),
                    )),
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
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration.collapsed(
                          hintText: '0907 343 340',
                          hintStyle: TextStyle(
                            fontSize: size.height * 0.02,
                            color: Color(0xffDADADA),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          text: 'Số điện thoại ',
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: size.height * 0.02,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: '(Chưa kích hoạt) ',
                              style: TextStyle(
                                color: Color(0xffFF3300),
                              ),
                            ),
                          ],
                        ),
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
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration.collapsed(
                                hintText: 'Nhập số điện thoại',
                                hintStyle: TextStyle(
                                  fontSize: size.height * 0.02,
                                  color: Color(0xff666666),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                size.width * 0.01,
                                size.height * 0.005,
                                size.width * 0.01,
                                size.height * 0.005),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Color(0xffDADADA)),
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                'Kích hoạt',
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: size.height * 0.015,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      height: size.height * 0.06,
                      margin: EdgeInsets.only(left: size.width * 0.1),
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
                              decoration: InputDecoration.collapsed(
                                hintText: 'Nhập mã bạn nhận được',
                                hintStyle: TextStyle(
                                  fontSize: size.height * 0.02,
                                  color: Color(0xff666666),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                size.width * 0.01,
                                size.height * 0.005,
                                size.width * 0.01,
                                size.height * 0.005),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Color(0xff5B9610)),
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                'Xác nhận',
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: size.height * 0.015,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      'Mật khẩu',
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: size.height * 0.02,
                        fontWeight: FontWeight.w400,
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
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: '********************',
                                hintStyle: TextStyle(
                                  fontSize: size.height * 0.02,
                                  color: Color(0xff666666),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                size.width * 0.01,
                                size.height * 0.005,
                                size.width * 0.01,
                                size.height * 0.005),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Color(0xffDADADA)),
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                'Đổi mật khẩu',
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: size.height * 0.015,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      height: size.height * 0.06,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: size.width * 0.1),
                      padding: EdgeInsets.only(
                          left: size.width * 0.03, right: size.width * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffDADADA)),
                      ),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Mật khẩu mới',
                          hintStyle: TextStyle(
                            fontSize: size.height * 0.02,
                            color: Color(0xff666666),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      height: size.height * 0.06,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: size.width * 0.1),
                      padding: EdgeInsets.only(
                          left: size.width * 0.03, right: size.width * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffDADADA)),
                      ),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Nhập lại mật khẩu mới',
                          hintStyle: TextStyle(
                            fontSize: size.height * 0.02,
                            color: Color(0xff666666),
                          ),
                        ),
                      ),
                    ),
                    //end box----------------------------------------------------------
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.06),
              Container(
                width: size.width * 0.75,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Color(0xff333333),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: FlatButton(
                  child: Text(
                    'Cập nhật',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: size.height * 0.4),
            ],
          ),
        ),
      ),
    );
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        _picIsChose = true;
        globals.isAvatarChecked = true;
        globals.avatarFile = imageFile;
      });
    }
  }
}
