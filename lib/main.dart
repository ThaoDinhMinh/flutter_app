import 'package:flutter/material.dart';
import 'package:flutter_list_detail/pages/home_page.dart';
import 'package:flutter_list_detail/pages/login_page.dart';
import 'package:flutter_list_detail/pages/main_page.dart';
import 'package:flutter_list_detail/styles/app_colors.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => Mainpage(),
      },
    );
  }
}
