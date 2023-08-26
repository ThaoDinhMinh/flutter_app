import 'package:flutter/material.dart';
import 'package:flutter_list_detail/components/tool_appbar.dart';
import 'package:flutter_list_detail/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolAppBar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  print('edit');
                  break;
                case ProfileMenu.logout:
                  print('logout');
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('edit'),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text('logout'),
                  value: ProfileMenu.logout,
                ),
              ];
            },
            icon: Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/temp/user1.jpg',
            width: 90,
            height: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Sarha Frencical',
            style: AppText.header1,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Safrenha',
            style: AppText.subtitle2,
          ),
          SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '371',
                    style: AppText.header1,
                  ),
                  Text(
                    'Folowers',
                    style: AppText.subtitle2,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '109',
                    style: AppText.header1,
                  ),
                  Text(
                    'Posts',
                    style: AppText.subtitle2,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '710',
                    style: AppText.header1,
                  ),
                  Text(
                    'Folowing',
                    style: AppText.subtitle2,
                  )
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
