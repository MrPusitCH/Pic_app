import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() =>
      _LoginViewState();
}

class _LoginViewState
    extends State<LoginView> {

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
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
                  const Text("Login"),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/signup",
                );
              },
              child: const Text(
                "Create Account",
              ),
            ),
          ],
        ),
      ),
    );
  }
}