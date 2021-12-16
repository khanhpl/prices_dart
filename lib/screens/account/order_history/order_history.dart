import 'package:flutter/material.dart';

import 'package:prices_dart/colors.dart';
import 'package:prices_dart/constants.dart' as Constants;
import 'package:prices_dart/screens/account/order_history/order.dart';
import 'package:prices_dart/screens/account/order_history/show_order_on_history.dart';

class OrderHistory extends StatefulWidget {
  @override
  State<OrderHistory> createState() {
    return OrderHistoryState();
  }
}

class OrderHistoryState extends State<OrderHistory> {
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
    List<Order> _orderList = [
      Order(
          orderID: '#23164669131',
          orderSource: 'Shopee',
          total: '360.000đ',
          refund: '35,125đ',
          coupon: 'thang7sale',
          itemName: 'Điện Thoại Realme C3i (2GB/32GB)',
          industry: 'Điện Thoại & Phụ Kiện',
          time: '20/06 - 14:02',
          status: 'Đang xử lý',
          isStatus: true),
      Order(
          orderID: '#23164669131',
          orderSource: 'Shopee',
          total: '360.000đ',
          refund: '35,125đ',
          coupon: 'thang7sale',
          itemName: 'Điện Thoại Realme C3i (2GB/32GB)',
          industry: 'Điện Thoại & Phụ Kiện',
          time: '20/06 - 14:02',
          status: 'Đang xử lý',
          isStatus: true),
      Order(
          orderID: '#23164669131',
          orderSource: 'Shopee',
          total: '360.000đ',
          refund: '35,125đ',
          coupon: 'thang7sale',
          itemName: 'Điện Thoại Realme C3i (2GB/32GB)',
          industry: 'Điện Thoại & Phụ Kiện',
          time: '20/06 - 14:02',
          status: 'Đang xử lý',
          isStatus: true),
      Order(
          orderID: '#23164669131',
          orderSource: 'Shopee',
          total: '360.000đ',
          refund: '35,125đ',
          coupon: 'thang7sale',
          itemName: 'Điện Thoại Realme C3i (2GB/32GB)',
          industry: 'Điện Thoại & Phụ Kiện',
          time: '20/06 - 14:02',
          status: 'Đang xử lý',
          isStatus: true),
      Order(
          orderID: '#23164669131',
          orderSource: 'Shopee',
          total: '360.000đ',
          refund: '35,125đ',
          coupon: 'thang7sale',
          itemName: 'Điện Thoại Realme C3i (2GB/32GB)',
          industry: 'Điện Thoại & Phụ Kiện',
          time: '20/06 - 14:02',
          status: 'Đang xử lý',
          isStatus: true),
      Order(
          orderID: '#23164669131',
          orderSource: 'Shopee',
          total: '360.000đ',
          refund: '35,125đ',
          coupon: 'thang7sale',
          itemName: 'Điện Thoại Realme C3i (2GB/32GB)',
          industry: 'Điện Thoại & Phụ Kiện',
          time: '20/06 - 14:02',
          status: 'Đang xử lý',
          isStatus: true),
      Order(
          orderID: '#23164669131',
          orderSource: 'Shopee',
          total: '360.000.000đ',
          refund: '35,125đ',
          coupon: 'thang7sale',
          itemName: 'Điện Thoại Realme C3i (2GB/32GB)',
          industry: 'Điện Thoại & Phụ Kiện',
          time: '20/06 - 14:02',
          status: 'Đang xử lý',
          isStatus: true),
      Order(
          orderID: '#23164669131',
          orderSource: 'Shopee',
          total: '360.000.000đ',
          refund: '35,125đ',
          coupon: 'thang7sale',
          itemName: 'Điện Thoại Realme C3i (2GB/32GB)',
          industry: 'Điện Thoại & Phụ Kiện',
          time: '20/06 - 14:02',
          status: 'Đang xử lý',
          isStatus: true),
    ];

    return Material(
      child: Container(
        color: _primaryColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          // physics: ClampingScrollPhysics(),
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
                'Lịch sử đơn hàng',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.032,
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: _orderList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: size.height * 0.02);
                },
                itemBuilder: (BuildContext context, int index) {
                  return ShowOrderOnHistory(order: _orderList[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
