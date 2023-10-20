import 'package:e_learning_ui/screens/signin_screen.dart';
import 'package:e_learning_ui/screens/signup_screen.dart';
import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class SignInSignUpButtons extends StatefulWidget {
  @override
  _SignInSignUpButtonsState createState() => _SignInSignUpButtonsState();
}

class _SignInSignUpButtonsState extends State<SignInSignUpButtons> {
  int selectedButton = 0; // 0 represents "Sign In," 1 represents "Sign Up"

  void _navigateToSignInScreen() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SigninScreen()));
  }

  void _navigateToSignUpScreen() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignupScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: borderColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 184,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedButton = 0;
                  });
                  _navigateToSignInScreen();
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
                  elevation:
                      MaterialStateProperty.resolveWith<double>((states) {
                    return selectedButton == 0 ? 3 : 0;
                  }),
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color>((states) {
                    return selectedButton == 0
                        ? Colors.white
                        : Colors.grey[200]!;
                  }),
                ),
                child: const Text("Sign in",
                    style: TextStyle(color: textColorTwo)),
              ),
            ),
            SizedBox(
              width: 184,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedButton = 1;
                  });
                  _navigateToSignUpScreen();
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
                  elevation:
                      MaterialStateProperty.resolveWith<double>((states) {
                    return selectedButton == 1 ? 4 : 0;
                  }),
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color>((states) {
                    return selectedButton == 1
                        ? Colors.white
                        : Colors.grey[200]!;
                  }),
                ),
                child: Text("Sign up", style: TextStyle(color: textColorTwo)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
