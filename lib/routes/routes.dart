import 'package:new_appp_1_0/view/screen/Detail/detail.dart';
import 'package:new_appp_1_0/view/screen/Userinterface/Userinterface.dart';
import 'package:new_appp_1_0/view/screen/home_page/homepage2.dart';

import '../view/headers/headers.dart';
import '../view/screen/Add/add.dart';
import '../view/screen/home_page/IntroPage.dart';
import '../view/screen/identity/identity.dart';
import '../view/screen/profile/profile.dart';
import '../view/screen/splash_screen/splash_screen.dart';

class Routes {
  static String splashScreen = "/";
  static String intro = "intro_page";
  static String Profile = "profile";
  static String homePage2 = "home_page2";
  static String Userinterface = "Userinterface_";
  static String identity = "Identity";
  static String add = "add";
  static String detail = "detail_page";

  static Map<String, WidgetBuilder> myRoutes = {
    splashScreen: (context) => const SplashScreen(),
    intro: (context) => const IntroPage(),
    Profile: (context) => const Profile_page(),
    homePage2: (context) => const Homepage2(),
    Userinterface: (context) => const User(),
    identity: (context) => const Identity(),
    add: (context) => const AddCarPage(),
    detail: (context) => const Detail_page(),
  };
}
