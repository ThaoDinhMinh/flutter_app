import 'package:flutter/material.dart';
import 'package:flutter_list_detail/components/post_item.dart';
import 'package:flutter_list_detail/components/tool_appbar.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<String> users = [];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    mockUsers();
    return Scaffold(
        appBar: ToolAppBar(
          title: 'Free Time 24 hours !',
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icon/Location.svg',
                width: 17,
                height: 24,
              ),
            )
          ],
        ),
        body: ListView.separated(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
            );
          },
        ));
  }

  mockUsers() {
    for (var i = 0; i < 300; i++) {
      users.add('User number $i');
    }
  }
}
