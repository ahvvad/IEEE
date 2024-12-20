import 'package:flutter/material.dart';
import '../../T4/task_four.dart';
import '../widgits_three/custom_form_field.dart';
import '../widgits_three/custom_bottons.dart';
import '../../constants.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kMainPadding),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              MainField(
                title: 'Username',
                icon: Icon(
                  Icons.person,
                  color: kTextColor,
                ),
              ),
              const SizedBox(height: 20),
              MainField(
                title: 'Email',
                icon: Icon(
                  Icons.person,
                  color: kTextColor,
                ),
              ),
              const SizedBox(height: 20),
              MainField(
                title: 'Password',
                icon: Icon(
                  Icons.password,
                  color: kTextColor,
                ),
              ),
              const SizedBox(height: 20),
              MainField(
                title: 'Confirm Password',
                icon: Icon(
                  Icons.password,
                  color: kTextColor,
                ),
              ),
              const SizedBox(height: 20),
              MainBotton(
                text: 'Sign up',
                onTap: () {
                  // SignUp metheds
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TaskFour(),
                    ),
                  );
                },
                width: double.infinity,
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Divider(
                  color: kThirdColor,
                  thickness: 0.99,
                ),
              ),
              const Text('Or'),
              const SizedBox(height: 30),
              LinedBotton(
                text: 'Sign in with Google',
                onTap: () {
                  // Google sign in methods
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TaskFour(),
                    ),
                  );
                },
                width: double.infinity,
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      // Get.to -> Login()
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: kMainColor),
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
