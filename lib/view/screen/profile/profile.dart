import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/view/componate/variable.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../routes/routes.dart';
import '../../headers/headers.dart';
import '../home_page/homepage2.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.pen,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CircleAvatar(
                      backgroundImage: FileImage(image!),
                      radius: 60.sp,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Common Functions",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 15.sp,
                                  child: Icon(Icons.settings_suggest_rounded),
                                  backgroundColor: Colors.white,
                                ),
                                Spacer(),
                                Text("Maintain"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 15.sp,
                                  child: Icon(Icons.car_crash),
                                  backgroundColor: Colors.white,
                                ),
                                Spacer(),
                                Text("Parts"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 15.sp,
                                  child: Icon(Icons.gpp_good),
                                  backgroundColor: Colors.white,
                                ),
                                Spacer(),
                                Text("Condition"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.favorite);
                      },
                      child: Container(
                        height: 60.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 18.sp,
                                child: Icon(Icons.add),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("My Cars"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () async {
                        print("================");
                        print("URI is Clicked.......");
                        print("================");
                        Uri url = Uri.parse(
                            "https://www.google.com/maps/place/Gujarat+car+point/@21.2118046,72.8962911,17z/data=!3m1!4b1!4m6!3m5!1s0x3be045002c74325b:0x1da46c9b1f91df4b!8m2!3d21.2118046!4d72.898866!16s%2Fg%2F11wbm8_7gk?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D");
                        await launchUrl(url, mode: LaunchMode.inAppWebView);
                      },
                      child: Container(
                        height: 60.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 18.sp,
                                child: Icon(Icons.location_on_outlined),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("Location"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
