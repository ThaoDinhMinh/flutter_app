import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  final String avatar;
  const UserAvatar({super.key, required this.size, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: Image.asset(
        avatar,
        width: size,
        height: size,
      ),
    );
  }
}
