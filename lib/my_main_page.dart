import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:prices_dart/screens/account/accountpage.dart';
import 'package:prices_dart/screens/general_setting/general_setting.dart';
import 'package:prices_dart/screens/home/homepage.dart';
import 'package:prices_dart/screens/settings/settings_page.dart';


class MyMainPage extends StatefulWidget {
  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  int _selectedIndex = 0;

  Widget pageCaller(index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return Text('Thong bao');
      case 2:
        return AccountPage();
      case 3:

        return SettingsPage();

      default:
        return HomePage();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: pageCaller(_selectedIndex),
      bottomNavigationBar: ConvexAppBar(
        height: size.height * 0.1,
        style: TabStyle.react,
        backgroundColor: Colors.white,
        color: Colors.grey[700],
        activeColor: Colors.black,
        onTap: _onItemTapped,
        initialActiveIndex: 0,
        top: 0.0,
        items: [
          TabItem(
            icon: Icons.home,
            title: 'Trang chủ',
          ),
          TabItem(
            icon: Icons.notifications,
            title: 'Thông báo',
          ),
          TabItem(
            icon: Icons.account_box_sharp,
            title: 'Tài khoản',
          ),
          TabItem(
            icon: Icons.settings,
            title: 'Cài đặt',
          ),
        ],
      ),
    );
  }
}
