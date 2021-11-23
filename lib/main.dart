import 'package:flutter/material.dart';
import 'package:prices_dart/my_main_page.dart';
import 'package:prices_dart/screens/account/accountpage.dart';
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
    },
  ),
  );
}

