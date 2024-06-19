import 'package:fall_detection/core/styles/colors/colors.dart';
import 'package:fall_detection/feature/chat/presentation/view/chat_view.dart';
import 'package:fall_detection/feature/profile/presenation/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../notification/presentation/views/notification_view.dart';
import 'home_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  static String id = 'bottom_nav_bar';

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
    const ChatView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 66.h,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 23,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 23,
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 23,
              ),
              label: 'Person',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                size: 23,
              ),
              label: 'Message',
            ),
          ],
        ),
      ),
    );
  }
}
