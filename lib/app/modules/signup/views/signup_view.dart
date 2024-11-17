import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Create your new account",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              // Form Fields
              _buildTextField("Username"),
              SizedBox(height: 10),
              _buildTextField("Email"),
              SizedBox(height: 10),
              _buildTextField("New Password", isPassword: true),
              SizedBox(height: 10),
              _buildTextField("Confirm New Password", isPassword: true),
              SizedBox(height: 20),
              // Terms & Conditions
              Text(
                "By signing up you agree to our Terms & Conditions\nand Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              // Sign Up Button
              ElevatedButton(
                onPressed: () {
                  // Perform login logic
                  Get.toNamed('/beranda'); // Navigate to Beranda page on success
                  // Handle Sign Up
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // OR Divider
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("OR", style: TextStyle(color: Colors.black54)),
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 10),
              // Social Media Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton("assets/images/google_icon.png"),
                  SizedBox(width: 10),
                  _buildSocialButton("assets/images/facebook_icon.png"),
                  SizedBox(width: 10),
                  _buildSocialButton("assets/images/apple_icon.png"),
                ],
              ),
              SizedBox(height: 20),
              // Login Prompt
              GestureDetector(
                onTap: () {
                  // Navigate to Login
                },
                child: Text(
                  "Already have an Account? Log In",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String asset) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: Image.asset(
        asset,
        width: 30,
        height: 30,
      ),
    );
  }
}
