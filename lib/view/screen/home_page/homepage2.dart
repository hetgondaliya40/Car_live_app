import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_appp_1_0/routes/routes.dart';

import '../../componate/variable.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250.h,
              ),
              CircleAvatar(
                radius: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
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
                    labelText: "Enter your Name...",
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
                  },
                ),
              ),
              Spacer(),
              (name.isEmpty)
                  ? Container()
                  : GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.Userinterface),
                      child: Container(
                        height: 50.h,
                        width: 250.h,
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
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.homepage3);
          },
        ),
      ),
    );
  }
}
