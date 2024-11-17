import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../routes/app_routes.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                "Welcome back",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Login to your account",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 50),
              // Input Username
              TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Input Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Aksi untuk lupa password
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Tombol Log In
              ElevatedButton(
                onPressed: () {
                  // Perform login logic
                  Get.toNamed('/beranda'); // Navigate to Beranda page on success
                  // Aksi untuk login
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.zero, // Set padding to zero to fit the gradient
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF2E5639),
                        Color(0xFF4CAF50),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("OR"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Tombol Google, Facebook, Apple
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Aksi login dengan Google
                    },
                    icon: Icon(FontAwesomeIcons.google),
                    color: Colors.red,
                    iconSize: 30,
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      // Aksi login dengan Facebook
                    },
                    icon: Icon(FontAwesomeIcons.facebook),
                    color: Colors.blue,
                    iconSize: 30,
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      // Aksi login dengan Apple
                    },
                    icon: Icon(FontAwesomeIcons.apple),
                    color: Colors.black,
                    iconSize: 30,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an Account? "),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.SIGNUP);
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
