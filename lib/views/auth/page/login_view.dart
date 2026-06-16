import 'package:flutter/material.dart';
import '../widget/auth_layout.dart';
import '../widget/auth_text_field.dart';
import '../widget/gradient_auth_button.dart';

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
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: "Welcome Back",
      subtitle: "Smart hiring starts with one clean login.",
      children: [
        AuthTextField(
          controller: emailController,
          label: "Email Address",
          hintText: "test@test.com",
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        AuthTextField(
          controller: passwordController,
          label: "Password",
          hintText: "123456",
          obscureText: true,
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot password?",
              style: TextStyle(
                color: Color(0xFF6256F6),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        GradientAuthButton(
          label: "Sign In",
          onPressed: () {},
        ),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account?",
              style: TextStyle(
                color: Color(0xFF8E91A7),
                fontSize: 13,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/signup");
              },
              child: const Text(
                "Sign up",
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
