import 'package:flutter/material.dart';
import 'package:flutter_list_detail/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          centerTitle: false,
          title: Text('Free Time 24 hours !'),
          actions: [
            Icon(Icons.location_on_outlined),
          ],
        ),
        body: ListView(
          children: mockUsers(),
        ));
  }
}

Widget _userItem() {
  return Row(
    children: [
      Image.asset(
        'assets/temp/user1.jpg',
        width: 40,
        height: 40,
      ),
      SizedBox(
        width: 16,
      ),
      Text('Sarah Fernal'),
    ],
  );
}

List<Widget> mockUsers() {
  List<Widget> users = [];
  for (var i = 0; i < 300; i++) {
    users.add(_userItem());
  }
  return users;
}
