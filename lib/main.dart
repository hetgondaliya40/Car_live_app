import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:new_appp_1_0/myApp.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xff000000),
      systemNavigationBarColor: Color(0xff000000),
    ),
  );
  runApp(
    CarApp(),
  );
}
