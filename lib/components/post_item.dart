import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user1.jpg',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle2,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(
            height: 12,
          ),
          Text(
            "Never mere entertainment, Giuseppe Verdi's operas evoke the depths of human feelings.",
            style: AppText.subtitle2,
          )
        ],
      ),
    );
  }
}
