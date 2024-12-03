// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../widgits_three/custom_form_field.dart';
import '../widgits_three/custom_bottons.dart';
import '../constants.dart';
import 'signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kMainPadding),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Enter your credential to login',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 100),
              mainField(
                title: 'Username',
                icon: Icon(
                  Icons.person,
                  color: kTextColor,
                ),
              ),
              const SizedBox(height: 12),
              mainField(
                title: 'Password',
                icon: Icon(
                  Icons.password,
                  color: kTextColor,
                ),
              ),
              const SizedBox(height: 12),
              MainBotton(text: 'Login', onTap: () {}, width: double.infinity),
              const SizedBox(height: 100),
              GestureDetector(
                onTap: () {
                  // Get.to ->  Forgot password page or method
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(color: kMainColor),
                ),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: kMainColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
