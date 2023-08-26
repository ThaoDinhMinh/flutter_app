import 'package:flutter/material.dart';
import 'package:flutter_list_detail/pages/home_page.dart';
import 'package:flutter_list_detail/pages/profile_page.dart';
import 'package:flutter_svg/svg.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Chat.svg'),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Plus.svg'),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Heart.svg'),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/Profile.svg'),
            label: 'User',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Message Page'),
    ),
    Center(
      child: Text('POST Page'),
    ),
    Center(
      child: Text('Favorite Page'),
    ),
    ProfilePage(),
  ];
}
