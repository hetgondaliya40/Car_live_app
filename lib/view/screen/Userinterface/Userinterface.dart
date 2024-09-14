import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/list/carnamelist/carname.dart';
import 'package:new_appp_1_0/view/componate/variable.dart';

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
    carList.add(CarAssignData("Mazda", "assets/carlogoimage/Mazda.png"));
    carList.add(CarAssignData("Audi", "assets/carlogoimage/Audi.png"));

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
          backgroundColor: const Color(0xffEAECEE),
          body: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30.w,
                  backgroundImage: const NetworkImage(
                      "https://instagram.famd5-2.fna.fbcdn.net/v/t51.2885-19/358029274_811505476970692_1864232310029346906_n.jpg?stp=dst-jpg_s640x640&_nc_ht=instagram.famd5-2.fna.fbcdn.net&_nc_cat=104&_nc_ohc=QpwDXkoUFjQQ7kNvgHOdE0T&_nc_gid=819803ee0cdc47978d7507409a31ca9d&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYCU58WbQtY1NGU1d7T4h_ZPseXrhGXz2VdoN2FGNLRXMg&oe=66EA10FC&_nc_sid=10d13b"),
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
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.notifications_none_rounded,
                    size: 25.w,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIconColor: Colors.black,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
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
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
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
                              fontSize: 21.sp,
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
        ),
      ),
    );
  }
}
