import 'package:flutter/material.dart';
import 'package:new_appp_1_0/routes/routes.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
  @override
  Widget build(BuildContext context) {
    String pass = "12345678";
    TextEditingController passcontroller = TextEditingController();
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
                (passcontroller == pass)
                    ? Navigator.pushNamed(context, Routes.add)
                    : Text("Try again");
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
