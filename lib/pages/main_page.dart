import 'package:flutter/material.dart';
import 'package:flutter_list_detail/components/bottom_item_navigation.dart';
import 'package:flutter_list_detail/pages/home_page.dart';
import 'package:flutter_list_detail/pages/profile_page.dart';
import 'package:flutter_list_detail/styles/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  Menus currenIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currenIndex.index],
      bottomNavigationBar: MyBottomNavigation(
        currenIndex: currenIndex,
        onTap: (value) {
          setState(() {
            currenIndex = value;
          });
        },
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

enum Menus { home, favorite, add, message, user }

class MyBottomNavigation extends StatelessWidget {
  final Menus currenIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation(
      {super.key, required this.currenIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            top: 17,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: BottomItemNavigation(
                        onPressed: () => onTap(Menus.home),
                        icon: 'assets/icon/Home.svg',
                        current: currenIndex,
                        name: Menus.home),
                  ),
                  Expanded(
                    child: BottomItemNavigation(
                        onPressed: () => onTap(Menus.favorite),
                        icon: 'assets/icon/Heart.svg',
                        current: currenIndex,
                        name: Menus.favorite),
                  ),
                  Spacer(),
                  Expanded(
                    child: BottomItemNavigation(
                        onPressed: () => onTap(Menus.message),
                        icon: 'assets/icon/Chat.svg',
                        current: currenIndex,
                        name: Menus.message),
                  ),
                  Expanded(
                    child: BottomItemNavigation(
                        onPressed: () => onTap(Menus.user),
                        icon: 'assets/icon/Profile.svg',
                        current: currenIndex,
                        name: Menus.user),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                onTap(Menus.add);
              },
              child: Container(
                height: 64,
                width: 64,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/icon/Plus.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
