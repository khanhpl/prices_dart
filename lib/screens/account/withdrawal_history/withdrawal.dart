import 'package:flutter/material.dart';

class Withdrawal{
  var widrawalID;
  var widrawalSource;
  var total;
  var bank;
  var bankID;
  var bankReceiver;
  var content;
  var time;
  var status;
  bool isStatus;
  Withdrawal({required this.widrawalID, required this.widrawalSource, required this.total, required this.bank,
  required this.bankID, required this.bankReceiver, required this.content, required this.time, required this.status, required this.isStatus
  });
}