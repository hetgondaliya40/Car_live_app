import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:new_appp_1_0/routes/routes.dart';
import 'package:new_appp_1_0/view/screen/Detail/detail.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDADCDE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            size: 30.h,
          ),
        ),
        title: Text(
          "Favorite Page",
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
      body: (favList.isNotEmpty)
          ? ListView.builder(
              itemCount: favList.length,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slidable(
                    endActionPane:
                        ActionPane(motion: BehindMotion(), children: [
                      SlidableAction(
                        onPressed: (context) {
                          favList.removeAt(index);
                          setState(() {});
                        },
                        borderRadius: BorderRadius.circular(12),
                        backgroundColor: Colors.red,
                        icon: CupertinoIcons.delete,
                      ),
                    ]),
                    child: Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Container(
                                  height: 125.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade500,
                                    borderRadius: BorderRadius.circular(15.sp),
                                    image: DecorationImage(
                                      image: FileImage(favList[index].image!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  favList[index].maker.toString(),
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "Price : ${favList[index].askingPrice}"
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.cart);
                                },
                                child: Container(
                                  height: 50.h,
                                  width: 80.w,
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
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            )
          : const Center(
              child: Text("Add Favorite"),
            ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color(0xff1f2029),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              CupertinoIcons.home,
              size: 25,
              color: Colors.grey,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.cart);
              },
              child: const Icon(
                CupertinoIcons.cart,
                color: Colors.grey,
                size: 25,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                CupertinoIcons.heart,
                color: Colors.grey,
                size: 25,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.identity);
              },
              child: const Icon(
                CupertinoIcons.add,
                color: Colors.grey,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
