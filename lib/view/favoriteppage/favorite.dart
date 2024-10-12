import 'package:flutter/material.dart';
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
      appBar: AppBar(),
      body: (favList.isNotEmpty) ? CircleAvatar() : Text("Add Favorite"),
    );
  }
}
