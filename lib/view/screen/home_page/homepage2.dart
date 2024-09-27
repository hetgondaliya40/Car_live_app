import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_appp_1_0/routes/routes.dart';

import '../../componate/variable.dart';

File? image;

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  ImagePicker picker = ImagePicker();
  Future<void> pickkImage({required ImageSource source}) async {
    XFile? xFile = await picker.pickImage(
      source: source,
    );
    if (xFile != null) {
      image = File(xFile.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 65.w,
                  backgroundImage: (image != null)
                      ? FileImage(image!)
                      : const NetworkImage(
                              "https://tse2.mm.bing.net/th?id=OIP.tXKGs73UYjBEZSclUWLSMAHaHa&pid=Api&P=0&h=180")
                          as ImageProvider,
                ),
                FloatingActionButton.small(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Pick Image"),
                        titleTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30.sp,
                        ),
                        backgroundColor: Colors.white,
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton.icon(
                              // style: ButtonStyle(
                              //   backgroundColor:
                              //       WidgetStateProperty.all(Color(0xff22262b)),
                              // ),
                              onPressed: () {
                                pickkImage(source: ImageSource.camera);
                                setState(() {});
                                Navigator.pop(context);
                              },
                              label: const Text(
                                "Camera",
                                style: TextStyle(
                                  color: Color(0xff22262b),
                                ),
                              ),
                            ),
                            ElevatedButton.icon(
                              // style: ButtonStyle(
                              //   backgroundColor:
                              //       WidgetStateProperty.all(Color(0xff22262b)),
                              // ),
                              onPressed: () {
                                pickkImage(source: ImageSource.gallery);

                                Navigator.pop(context);
                              },
                              label: const Text(
                                "Gallary",
                                style: TextStyle(
                                  color: Color(0xff22262b),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  splashColor: Colors.white,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                validator: (val) =>
                    (val!.isEmpty) ? "Enter your Name..." : null,
                keyboardType: TextInputType.name,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  fillColor: Colors.black,
                  focusColor: Colors.black,
                  labelText: "Name",
                  hintText: "Enter Your Name",
                  labelStyle: const TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onChanged: (val) {
                  name = val;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Visibility(
          visible: name.isNotEmpty && image != null,
          child: GestureDetector(
            onTap: () =>
                Navigator.pushReplacementNamed(context, Routes.Userinterface),
            child: Transform.scale(
              scale: 0.9,
              child: Container(
                height: 50.h,
                width: 250.w,
                child: Center(
                  child: Text(
                    "Let's Go ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
