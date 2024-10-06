import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/list/carnamelist/carname.dart';
import 'package:new_appp_1_0/routes/routes.dart';
import 'package:new_appp_1_0/view/componate/variable.dart';
import 'package:new_appp_1_0/view/screen/home_page/homepage2.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../../../list/carnamelist/CarAssignData.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  List<CarAssignData> carList = [];

  @override
  void initState() {
    carList.add(CarAssignData("Suzuki", "assets/carlogoimage/suzuki.png"));
    carList.add(CarAssignData("Honda", "assets/carlogoimage/honda.png"));
    carList.add(CarAssignData("Toyota", "assets/carlogoimage/toyota.png"));
    carList.add(CarAssignData("Hyundai", "assets/carlogoimage/cars.png"));
    carList.add(CarAssignData("Kia", "assets/carlogoimage/kia.png"));
    carList.add(CarAssignData("Skoda", "assets/carlogoimage/Mazda.png"));
    carList.add(CarAssignData("Volkswagen", "assets/carlogoimage/Audi.png"));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, Routes.Profile),
                  child: CircleAvatar(
                    radius: 30.w,
                    backgroundImage: FileImage(image!),
                  ),
                ),
                title: Text(
                  "Welcome 👋",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
                subtitle: Text(
                  "$name",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 25.w,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.notifications_none_rounded,
                    size: 25.w,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for cars...",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                    prefixIconColor: Colors.black,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 130.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: carList.length,
                  itemBuilder: (context, index) {
                    final item = carList[index];
                    return Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30.w,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(item.image),
                            ),
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            item.name,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            width: 14.w,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color(0xff1f2029),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  CupertinoIcons.home,
                  size: 25,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    /* Navigator.pushNamed(context, Routes.cartPage);*/
                  },
                  child: Icon(
                    CupertinoIcons.cart,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    /*      Navigator.pushNamed(context, Routes.favPage);*/
                  },
                  child: Icon(
                    CupertinoIcons.heart,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.identity);
                  },
                  child: Icon(
                    CupertinoIcons.add,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
