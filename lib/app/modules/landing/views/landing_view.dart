import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class LandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF8EB695), // Warna hijau gradasi sesuai desain
              Color(0xFFBDC4A7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Selamat Datang Di Aplikasi Catering",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),
              // Button Log In
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.LOGIN);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2E5639), // Warna hijau tua
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Button Sign Up
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.SIGNUP);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF2E5639), backgroundColor: Colors.white, // Text hijau tua
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(
                      color: Color(0xFF2E5639),
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF2E5639),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
