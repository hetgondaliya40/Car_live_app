import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                ImagePicker();
              },
              child: CircleAvatar(
                radius: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
