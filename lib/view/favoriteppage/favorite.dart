import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/view/screen/Add/add.dart';
import 'package:new_appp_1_0/view/screen/Detail/detail.dart';

import '../../modal/modal.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: (favList.isNotEmpty)
          ? ListView.builder(
              itemCount: favList.length,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffe1e3e5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(favList[index].insurance),
                  ],
                ),
              ),
            )
          : Center(
              child: Text("Add Favorite"),
            ),
    );
  }
}
