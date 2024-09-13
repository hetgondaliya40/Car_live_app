import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/routes/routes.dart';

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: Size(width, height),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes.myRoutes,
      ),
    );
  }
}
