import 'package:flutter/material.dart';
import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;
import 'package:prices_dart/screens/account/show_withdrawal_detail_on_history.dart';
import 'package:prices_dart/screens/account/withdrawal.dart';

class ShowWithdrawalOnHistory extends StatefulWidget {
  Withdrawal withdrawal;

  ShowWithdrawalOnHistory({required this.withdrawal});

  @override
  State<ShowWithdrawalOnHistory> createState() {
    return ShowWithdrawalOnHistoryState(withdrawal: this.withdrawal);
  }
}

class ShowWithdrawalOnHistoryState extends State<ShowWithdrawalOnHistory> {
  Withdrawal withdrawal;

  ShowWithdrawalOnHistoryState({required this.withdrawal});

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
      child: Container(
        height: size.height * 0.1,
        margin: EdgeInsets.fromLTRB(size.width * 0.03, 0, size.width * 0.03, 0),
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
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ShowWithdrawalDetailOnHistory(withdrawal: this.withdrawal),
              ),
            );
          },
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
                        fontSize: size.height * 0.016,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: size.height * 0.006),
                    Text(
                      withdrawal.time,
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: size.height * 0.016,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: size.height * 0.006),
                    Text(
                      withdrawal.status,
                      style: TextStyle(
                        color: withdrawal.isStatus == true
                            ? Color(0xff5B9610)
                            : Color(0xffFF3300),
                        fontSize: size.height * 0.016,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                  ],
                ),
              ),
              Spacer(),
              Text(
                withdrawal.total,
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: size.height * 0.016,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: size.width*0.01),
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
    );
  }
}
