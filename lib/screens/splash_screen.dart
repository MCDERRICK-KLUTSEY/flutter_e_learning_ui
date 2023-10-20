import 'package:e_learning_ui/screens/signin_screen.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        ),
      );
    });
    return const Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Text(
          'E-Learning',
          style: TextStyle(
            color: textColorOne,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}
