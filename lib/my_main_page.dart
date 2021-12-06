import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:prices_dart/screens/account/accountpage.dart';
import 'package:prices_dart/screens/home/homepage.dart';
import 'package:prices_dart/screens/notifications/notification_page.dart';
import 'package:prices_dart/screens/settings/settings_page.dart';

class MyMainPage extends StatefulWidget {
  int selectedIndex = 0;

  bool isBottomNav = true;

  MyMainPage({required this.selectedIndex, required this.isBottomNav});

  @override
  State<MyMainPage> createState() => _MyMainPageState(
      selectedIndex: this.selectedIndex, isBottomNav: this.isBottomNav);
}

class _MyMainPageState extends State<MyMainPage> {
  int selectedIndex;
  bool isBottomNav;
  _MyMainPageState({required this.selectedIndex, required this.isBottomNav});

  Widget pageCaller(index) {
    switch (selectedIndex) {
      case 0:
        return HomePage();
      case 1:
        return NotificationPage(isBottomNav: isBottomNav);
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
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: pageCaller(selectedIndex),
      bottomNavigationBar: isBottomNav == true ? ConvexAppBar(
        height: size.height * 0.1,
        style: TabStyle.react,
        backgroundColor: Colors.white,
        color: Colors.grey[700],
        activeColor: Colors.black,
        onTap: _onItemTapped,
        initialActiveIndex: selectedIndex,
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
      ) : Container(
        height: 0,
      ),

      // bottomNavigationBar: ConvexAppBar(
      //   height: size.height * 0.1,
      //   style: TabStyle.react,
      //   backgroundColor: Colors.white,
      //   color: Colors.grey[700],
      //   activeColor: Colors.black,
      //   onTap: _onItemTapped,
      //   initialActiveIndex: 0,
      //   top: 0.0,
      //   items: [
      //     TabItem(
      //       icon: Icons.home,
      //       title: 'Trang chủ',
      //     ),
      //     TabItem(
      //       icon: Icons.notifications,
      //       title: 'Thông báo',
      //     ),
      //     TabItem(
      //       icon: Icons.account_box_sharp,
      //       title: 'Tài khoản',
      //     ),
      //     TabItem(
      //       icon: Icons.settings,
      //       title: 'Cài đặt',
      //     ),
      //   ],
      // ),
    );
  }
}
