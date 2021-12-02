
import 'package:flutter/material.dart';
import 'package:prices_dart/my_main_page.dart';
import 'package:prices_dart/screens/account/accountpage.dart';
import 'package:prices_dart/screens/account/balance/add_bank.dart';
import 'package:prices_dart/screens/account/balance/add_bank_otp.dart';
import 'package:prices_dart/screens/account/balance/add_bank_status.dart';
import 'package:prices_dart/screens/account/feedback/feedback_for_prices.dart';
import 'package:prices_dart/screens/account/feedback/feedback_status.dart';
import 'package:prices_dart/screens/account/order_history/order_history.dart';
import 'package:prices_dart/screens/account/personal_setting.dart';
import 'package:prices_dart/screens/account/balance/balance_in_wallet.dart';
import 'package:prices_dart/screens/account/refund_policy.dart';
import 'package:prices_dart/screens/account/withdrawal_history/withdrawal_history.dart';
import 'package:prices_dart/screens/account/balance/withdrawal_request.dart';
import 'package:prices_dart/screens/account/balance/withdrawal_request_process.dart';
import 'package:prices_dart/screens/home/homepage.dart';
import 'package:prices_dart/screens/settings/app_information.dart';
import 'package:prices_dart/screens/settings/settings_page.dart';
import 'package:prices_dart/screens/welcome/forgot_password.dart';
import 'package:prices_dart/screens/welcome/login_screen.dart';
import 'package:prices_dart/screens/welcome/register_screen.dart';
import 'package:prices_dart/screens/welcome/send_request_password.dart';

import 'package:prices_dart/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => WelcomeScreen(),
      '/loginScreen': (context) => LoginScreen(),
      '/mainPage' : (context) => MyMainPage(),
      '/forgotPassword' : (context) => ForgotPassword(),
      '/sendRequestPassword' : (context) => SendRequestPassword(),
      '/registerSuccess' : (context) => RegisterSuccessful(),
      '/accountPage' : (context) => AccountPage(),
      '/balancePage' : (context) => BalancePage(),
      '/withdrawalScreen' : (context) => WithdrawalRequestPage(),
      '/withdrawalProcessScreen' : (context) => WithdrawalRequestProcessPage(),
      '/homePage' : (context) => HomePage(),
      '/personalSettingPage' : (context) => PersonalSetting(),
      '/appInfor' : (context) => AppInformation(),
      '/generalSettingPage' : (context) => SettingsPage(),
      '/orderHistory' : (context) => OrderHistory(),
      '/withDrawalHistory' : (context) => WithdrawalHistory(),
      '/refundPolicy' : (context) => RefundPolicy(),
      '/feedbackForPrices': (context) => FeedbackForPrices(),
      '/feedbackSuccessful': (context) => FeedbackSuccessful(),
      '/addBank' : (context) => AddBank(),
      '/addBankOTP' : (context) => AddBankOTP(),
      '/addBankStatus' : (context) => AddBankStatus(),

    },
  ),
  );
}

