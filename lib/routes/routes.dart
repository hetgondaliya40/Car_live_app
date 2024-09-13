import 'package:new_appp_1_0/view/screen/home_page/homepage2.dart';

import '../view/headers/headers.dart';
import '../view/screen/home_page/home_page.dart';
import '../view/screen/splash_screen/splash_screen.dart';

class Routes {
  static String splashScreen = "/";
  static String homePage = "home_page";
  static String homePage2 = "home_page2";

  static Map<String, WidgetBuilder> myRoutes = {
    splashScreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
    homePage2: (context) => const Homepage2(),
  };
}
