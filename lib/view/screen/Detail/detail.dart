import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/modal/modal.dart';
import 'package:new_appp_1_0/view/screen/Add/add.dart';

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
        title: Text(
          cars.registration.toString(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
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
                          fontSize: 22.sp,
                        ),
                      ),
                      Text(
                        cars.model.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Maker Name :- ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                      Text(
                        cars.maker.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Features ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
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
                              CircleAvatar(
                                child: Icon(
                                  Icons.local_gas_station,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text("Vearsion"),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                cars.version.toString(),
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
                              CircleAvatar(
                                child: Icon(
                                  Icons.local_gas_station,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text("Fule Type"),
                              SizedBox(
                                height: 15.h,
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
                              CircleAvatar(
                                child: Icon(
                                  Icons.format_paint,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text("Color"),
                              SizedBox(
                                height: 15.h,
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
                              CircleAvatar(
                                child: Icon(
                                  Icons.pin,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text("Km"),
                              SizedBox(
                                height: 15.h,
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
                              CircleAvatar(
                                child: Icon(
                                  Icons.how_to_reg,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text("Registration"),
                              SizedBox(
                                height: 15.h,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Price"),
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
