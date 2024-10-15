import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_appp_1_0/routes/routes.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
  String pass = "12345678";
  TextEditingController passController = TextEditingController();
  bool _isPasswordIncorrect = false;
  bool _isPasswordVisible = false; // State variable for password visibility

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back),
          ),
        ), // Light background color
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Heading Text
                Text(
                  "Authentication",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),

                // TextFormField for password input
                TextFormField(
                  controller: passController,
                  obscureText:
                      !_isPasswordVisible, // Toggle password visibility
                  decoration: InputDecoration(
                    labelText: "Enter Password",
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock, color: Colors.black54),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black54,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible =
                              !_isPasswordVisible; // Toggle visibility
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black87,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: _isPasswordIncorrect ? Colors.red : Colors.black,
                        width: 1.5,
                      ),
                    ),
                    errorText:
                        _isPasswordIncorrect ? "Incorrect Password!" : null,
                  ),
                ),
                const SizedBox(height: 20),

                // Elevated Button for submission
                ElevatedButton(
                  onPressed: () {
                    if (passController.text == pass) {
                      // Navigate to another page if password matches
                      Navigator.pushReplacementNamed(context, Routes.add);
                    } else {
                      // Show error message
                      setState(() {
                        _isPasswordIncorrect = true;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1f2029),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Display error message if password is incorrect
                if (_isPasswordIncorrect)
                  Text(
                    "Please try again. The password you entered is incorrect.",
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
