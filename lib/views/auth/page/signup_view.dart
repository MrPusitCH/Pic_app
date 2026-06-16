import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() =>
      _SignupViewState();
}

class _SignupViewState
    extends State<SignupView> {

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller:
                  emailController,
              decoration:
                  const InputDecoration(
                labelText: "Email",
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            TextField(
              controller:
                  passwordController,
              obscureText: true,
              decoration:
                  const InputDecoration(
                labelText: "Password",
              ),
            ),

            const SizedBox(
              height: 24,
            ),

            ElevatedButton(
              onPressed: () {

              },
              child:
                  const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}