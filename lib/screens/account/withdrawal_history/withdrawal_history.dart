import 'package:flutter/material.dart';

import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;
import 'package:prices_dart/screens/account/withdrawal_history/show_withdrawal_on_history.dart';
import 'package:prices_dart/screens/account/withdrawal_history/withdrawal.dart';
class WithdrawalHistory extends StatefulWidget{
  @override
  State<WithdrawalHistory> createState() {
    return WithdrawalHistoryState();
  }

}

class WithdrawalHistoryState extends State<WithdrawalHistory> {

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
    List<Withdrawal> _withdrawalList = [
      Withdrawal(widrawalID: '#23164669131', widrawalSource: 'Ví Prices của bạn', total: '360.000đ', bank: 'Sacombank', bankID: '6958489556', bankReceiver: 'PHAN THANH LUAN', content: 'tien prices', time: '20/06 - 14:02', status: 'Thành công', isStatus: true),
      Withdrawal(widrawalID: '#23164669131', widrawalSource: 'Ví Prices của bạn', total: '360.000đ', bank: 'Sacombank', bankID: '6958489556', bankReceiver: 'PHAN THANH LUAN', content: 'tien prices', time: '20/06 - 14:02', status: 'Thành công', isStatus: true),
      Withdrawal(widrawalID: '#23164669131', widrawalSource: 'Ví Prices của bạn', total: '360.000đ', bank: 'Sacombank', bankID: '6958489556', bankReceiver: 'PHAN THANH LUAN', content: 'tien prices', time: '20/06 - 14:02', status: 'Thành công', isStatus: true),
      Withdrawal(widrawalID: '#23164669131', widrawalSource: 'Ví Prices của bạn', total: '360.000đ', bank: 'Sacombank', bankID: '6958489556', bankReceiver: 'PHAN THANH LUAN', content: 'tien prices', time: '20/06 - 14:02', status: 'Thất bại', isStatus: false),
    ];

    return Material(
      child: Container(
        color: _primaryColor,
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
                'Lịch sử rút tiền',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.032,
                ),
              ),



              ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: _withdrawalList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: size.height*0.02);
                },
                itemBuilder: (BuildContext context, int index) {
                  return ShowWithdrawalOnHistory(withdrawal: _withdrawalList[index]);
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

}