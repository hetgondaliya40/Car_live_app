import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/modal/modal.dart';

bool islike = true;
List<ModalClass> favList = [];
List cartList = [];

class Detail_page extends StatefulWidget {
  const Detail_page({super.key});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  @override
  Widget build(BuildContext context) {
    ModalClass cars = ModalRoute.of(context)!.settings.arguments as ModalClass;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          cars.registration.toString(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (!favList.contains(cars)) {
                favList.add(cars);
              }
              islike = !islike;
              setState(() {});
            },
            icon: (islike == false)
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.favorite_border,
                  ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Modal Name :- ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25.sp,
                        ),
                      ),
                      Text(
                        cars.model.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Maker Name :- ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        cars.maker.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Details ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22.sp,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 5.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffe1e3e5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text("Owner"),
                              SizedBox(
                                height: 25.h,
                              ),
                              Text(
                                cars.ownership.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffe1e3e5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.local_gas_station,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              const Text("Vearsion"),
                              SizedBox(
                                height: 25.h,
                              ),
                              Text(
                                cars.version.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffe1e3e5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              const CircleAvatar(
                                child: Icon(
                                  Icons.local_gas_station,
                                  color: Colors.black,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text("Fule Type"),
                              SizedBox(
                                height: 25.h,
                              ),
                              Text(
                                cars.fuel,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffe1e3e5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.format_paint,
                                  color: Colors.black,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text("Color"),
                              SizedBox(
                                height: 25.h,
                              ),
                              Text(
                                cars.colour,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffe1e3e5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.pin,
                                  color: Colors.black,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text("Km"),
                              SizedBox(
                                height: 25.h,
                              ),
                              Text(
                                cars.km.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffe1e3e5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.how_to_reg,
                                  color: Colors.black,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text("Registration"),
                              SizedBox(
                                height: 25.h,
                              ),
                              Text(
                                cars.registration.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(
                              cars.askingPrice.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: GestureDetector(
                          onTap: () {
                            if (!cartList.contains(cars)) {
                              cartList.add(cars);
                            }
                            setState(() {});
                          },
                          child: Container(
                            height: 50.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Color(0xff22262b),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                "Buy now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
