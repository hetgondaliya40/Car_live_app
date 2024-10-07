import 'package:flutter/material.dart';
import 'package:new_appp_1_0/routes/routes.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();


}

class _IdentityState extends State<Identity> {
  @override
  String pass = "12345678";
  TextEditingController passcontroller = TextEditingController();
  Widget build(BuildContext context) {


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: passcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                (passcontroller.text == pass)
                    ? Navigator.pushReplacementNamed(context, Routes.add,)
                    : Text("Try again");
                setState(() {

                });
              },
              child: Text("hgecbh"),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
