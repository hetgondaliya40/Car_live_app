import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/routes/routes.dart';

import '../../headers/headers.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Text(
                  "Easy Way to buy\nyour dream Car",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Text(
                  "By using the car, you can move quickly\nfrom one place to another\nin your daily life",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Image(
            image: NetworkImage(
                "https://i.pinimg.com/564x/af/f6/a6/aff6a6b0aa69b1019c7188142181e36f.jpg"),
          ),
          Spacer(
            flex: 2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.homePage2);
            },
            child: Container(
              height: 50.h,
              width: 250.h,
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
