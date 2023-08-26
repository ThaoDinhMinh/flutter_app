import 'package:flutter/material.dart';
import 'package:flutter_list_detail/styles/app_text.dart';

import '../styles/app_colors.dart';

class ToolAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const ToolAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      centerTitle: false,
      title: Text(
        title,
        style: AppText.header1,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
