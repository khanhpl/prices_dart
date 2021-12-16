
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prices_dart/constants.dart' as Constants;
import 'package:prices_dart/colors.dart';
import 'package:prices_dart/my_lib/upper_case_text_formatter.dart';
class AddBank extends StatefulWidget{
  @override
  State<AddBank> createState() {
    return AddBankState();
  }

}

class AddBankState extends State<AddBank> {
  bool _isCheckedViettin = false;
  bool _isCheckedVietcom = false;
  bool _isCheckedSacom = true;
  String _bankName =  "Sacombank\nNgân hàng công thương";

  _ChooseBank(BuildContext context) {
    var size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
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
                                value: _isCheckedViettin,
                                onChanged: (value) {
                                  setState(() {
                                    _isCheckedViettin = true;
                                    _isCheckedVietcom = false;
                                    _isCheckedSacom = false;
                                    _bankName = "ViettinBank\nNgân hàng TMCP công thương VN";
                                    BankName();
                                    // print(_bankName);
                                  });
                                },
                                checkColor: Color(0xff5B9610),
                                activeColor: Colors.white,
                              ),
                              Text(
                                'Viettinbank',
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.height * 0.022,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Ngân hàng TMCP Công Thương VN',
                          // _bankName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontSize: size.height * 0.022,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
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
                                value: _isCheckedVietcom,
                                onChanged: (value) {
                                  setState(() {
                                    _isCheckedViettin = false;
                                    _isCheckedVietcom = true;
                                    _isCheckedSacom = false;
                                    _bankName = "Vietcombank\nNgân hàng ngoại thương VN";
                                    BankName();
                                    // print(_bankName);
                                  });
                                },
                                checkColor: Color(0xff5B9610),
                                activeColor: Colors.white,
                              ),
                              Text(
                                'Vietcombank',
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.height * 0.022,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Text(
                          'Ngân hàng Thương mại cổ phần công thương VN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontSize: size.height * 0.022,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
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
                                value: _isCheckedSacom,
                                onChanged: (value) {
                                  setState(() {
                                    _isCheckedViettin = false;
                                    _isCheckedVietcom = false;
                                    _isCheckedSacom = true;
                                    _bankName =  "Sacombank\nNgân hàng công thương";
                                    BankName();
                                    // print(_bankName);
                                  });
                                },
                                checkColor: Color(0xff5B9610),
                                activeColor: Colors.white,
                              ),
                              Text(
                                'Sacombank',
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.height * 0.022,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Text(
                          'Ngân hàng thương mại cổ phần Sài Gòn Thương Tín',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontSize: size.height * 0.022,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
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
      color: _primaryColor,
      child: GestureDetector(
        onTap: (){},
        child: Container(
          padding:
          EdgeInsets.fromLTRB(size.width * 0.03, 0.0, size.width * 0.03, 0.0),
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
                  'Thêm tài khoản ngân hàng',
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.032,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  width: size.width * 0.89,
                  child: Text(
                    'Hiện tại Prices chỉ hỗ trợ liên kết chỉ duy nhất 1 tài khoản ngân hàng.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w400,
                      fontSize: size.height * 0.022,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  width: size.width,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chọn ngân hàng',
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
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              _ChooseBank(context);
                            });
                          },
                          padding: EdgeInsets.all(0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  _bankName,
                                  style: TextStyle(
                                      fontSize: size.height * 0.02,
                                      color: Color(0xff666666),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                child: ImageIcon(
                                  AssetImage(
                                      'assets/account_page/arrow_down.png'),
                                  size: size.height * 0.022,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Text(
                        'Chi nhánh',
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
                        child: FlatButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Chi nhánh gò vấp',
                                  style: TextStyle(
                                      fontSize: size.height * 0.022,
                                      color: Color(0xff666666),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                child: ImageIcon(
                                  AssetImage(
                                      'assets/account_page/arrow_down.png'),
                                  size: size.height * 0.022,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Text(
                        'Tên chủ tài khoản',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: size.height * 0.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Container(
                        height: size.height * 0.06,
                        padding: EdgeInsets.fromLTRB(
                            size.width * 0.03, 0, size.width * 0.03, 0),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xffDADADA)),
                        ),
                        child: TextField(
                          inputFormatters: [
                            UpperCaseTextFormatter(),
                          ],
                          decoration: InputDecoration.collapsed(
                            hintText: 'PHAN THANH LUAN',
                            hintStyle: TextStyle(
                              fontSize: size.height * 0.022,
                              color: Color(0xff666666),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Text(
                        'Số tài khoản',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: size.height * 0.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Container(
                        height: size.height * 0.06,
                        padding: EdgeInsets.fromLTRB(
                            size.width * 0.03, 0, size.width * 0.03, 0),
                        alignment: Alignment.centerLeft,
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
                            hintText: '365478912',
                            hintStyle: TextStyle(
                              fontSize: size.height * 0.022,
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
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.0015, 0, size.width * 0.015, 0),
                  decoration: BoxDecoration(
                    color: Color(0xff333333),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: FlatButton(
                    child: Text(
                      'Thêm tài khoản',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height * 0.024,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/addBankOTP');
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void BankName() async {
    setState(() {
      if(_isCheckedSacom == true){
        _bankName =  "Sacombank\nNgân hàng công thương";
      }else if(_isCheckedVietcom == true){
        _bankName = "Vietcombank\nNgân hàng ngoại thương VN";
      }else if(_isCheckedViettin == true){
        _bankName = "ViettinBank\nNgân hàng TMCP công thương VN";
      }
    });
  }
}

