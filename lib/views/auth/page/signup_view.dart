import 'package:flutter/material.dart';
import '../widget/auth_layout.dart';
import '../widget/auth_text_field.dart';
import '../widget/gradient_auth_button.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() =>
      _SignupViewState();
}

class _SignupViewState
    extends State<SignupView> {

  final nameController =
      TextEditingController();

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: "Get started free.",
      subtitle: "Create your account and build your profile.",
      children: [
        AuthTextField(
          controller: nameController,
          label: "Full Name",
          hintText: "Your name",
          keyboardType: TextInputType.name,
        ),
        const SizedBox(height: 16),
        AuthTextField(
          controller: emailController,
          label: "Email Address",
          hintText: "hello@example.com",
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        AuthTextField(
          controller: passwordController,
          label: "Password",
          hintText: "Create a password",
          obscureText: true,
        ),
        const SizedBox(height: 26),
        GradientAuthButton(
          label: "Sign up",
          onPressed: () {},
        ),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account?",
              style: TextStyle(
                color: Color(0xFF8E91A7),
                fontSize: 13,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Sign in",
                style: TextStyle(
                  color: Color(0xFF6256F6),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
