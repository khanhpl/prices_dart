import 'package:flutter/material.dart';
class Order{
  var orderID;
  var orderSource;
  var total;
  var refund;
  var coupon;
  var itemName;
  var industry;
  var time;
  var status;
  bool isStatus;
  Order({required this.orderID, required this.orderSource, required this.total, required this.refund,
  required this.coupon, required this.itemName, required this.industry, required this.time, required this.status, required this.isStatus,});
}