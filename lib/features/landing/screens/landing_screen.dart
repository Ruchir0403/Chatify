import 'package:chatify/colors.dart';
import 'package:chatify/common/widgets/custom_button.dart';
import 'package:chatify/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          const Text(
            'Welcome to chatify',
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: size.height / 9),
          Image.asset(
            'assets/bg.png',
            height: 340,
            width: 340,
            color: tabColor,
          ),
          SizedBox(height: size.height / 9),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "please read our privacy policy",
              style: TextStyle(color: greyColor),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: size.width * 0.75,
            child: CustomButton(
              text: "AGREE AND CONTINUE",
              onPressed: () => navigateToLoginScreen(context),
            ),
          )
        ],
      )),
    );
  }
}
