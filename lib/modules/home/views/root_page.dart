import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/chat/models/views/chatpage.dart';
import 'package:laundry_app/modules/history/views/history.dart';
import 'package:laundry_app/modules/home/home.dart';
import 'package:laundry_app/modules/profile/profile.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
        builder: (BuildContext context) => const RootPage(),
        settings: const RouteSettings(name: 'RootPage'));
  }

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomePage(),
        const ChatPage(),
        const HistoryPage(),
        const ProfilePage(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 30,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              size: 30,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.lightGray,
        unselectedFontSize: 14,
        elevation: 4,
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
