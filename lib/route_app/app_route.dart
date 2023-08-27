import 'package:flutter_list_detail/pages/near_page.dart';

import '../pages/edit_profile.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => Mainpage(),
    edit: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const edit = '/edit_profile';
  static const nearby = '/nearby';
}
