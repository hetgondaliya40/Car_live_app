import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_appp_1_0/modal/modal.dart';
import 'package:new_appp_1_0/routes/routes.dart';
import 'package:new_appp_1_0/modal/modal.dart';

File? carimage;

TextEditingController Regcontroller = TextEditingController();
TextEditingController Makercontroller = TextEditingController();
TextEditingController Modalcontroller = TextEditingController();
TextEditingController Versionontroller = TextEditingController();
TextEditingController Yearcontroller = TextEditingController();
TextEditingController FuelController = TextEditingController();
TextEditingController KilometerController = TextEditingController();
TextEditingController ColourController = TextEditingController();
TextEditingController OwnershipController = TextEditingController();
TextEditingController InsuranceController = TextEditingController();
TextEditingController AskingPriceController = TextEditingController();

GlobalKey<FormState> key = GlobalKey();

class ADD extends StatefulWidget {
  const ADD({super.key});

  @override
  State<ADD> createState() => _SettingState();
}

class _SettingState extends State<ADD> {
  ImagePicker picker = ImagePicker();
  Future<void> pickkImage({required ImageSource source}) async {
    XFile? xFile = await picker.pickImage(
      source: source,
    );
    if (xFile != null) {
      carimage = File(xFile.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SafeArea(
        child: Scaffold(
        
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(
                key: key,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 65.w,
                          backgroundImage: (carimage != null)
                              ? FileImage(carimage!)
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
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Regcontroller,
                            decoration: InputDecoration(
                                hintText: "REGISTRATION",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Makercontroller,
                            decoration: InputDecoration(
                                hintText: "MAKER",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Modalcontroller,
                            decoration: InputDecoration(
                                hintText: "MODEL",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Versionontroller,
                            decoration: InputDecoration(
                                hintText: "VERSION",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Yearcontroller,
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            decoration: InputDecoration(
                                hintText: "YEAR",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Makercontroller,
                            decoration: InputDecoration(
                                hintText: "Fuel",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Makercontroller,
                            decoration: InputDecoration(
                                hintText: "Kilometers",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Makercontroller,
                            decoration: InputDecoration(
                                hintText: "Colour",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Makercontroller,
                            decoration: InputDecoration(
                                hintText: "Ownership",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Makercontroller,
                            decoration: InputDecoration(
                                hintText: "Insurance",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: Makercontroller,
                            decoration: InputDecoration(
                                hintText: "Asking Price",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                )),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                         //  Regcontroller = ;
                         // Yearcontroller = ;
                        if(key.currentState?.validate() == true){

                          
                        }
                        Navigator.pushReplacementNamed(context, Routes.Userinterface,);
                      },
                      child: Text("SAVE",),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
