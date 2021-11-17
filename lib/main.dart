import 'package:flutter/material.dart';
import 'package:prices_dart/my_main_page.dart';
import 'package:prices_dart/screens/accountpage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => MyMainPage(),

    },
  ));
}

