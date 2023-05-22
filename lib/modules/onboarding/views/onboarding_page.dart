import 'package:flutter/material.dart';
import 'package:laundry_app/modules/authentication/authentication.dart';
import 'package:laundry_app/widgets/app_buttons.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppButton(
          onPressed: () {
            // Navigator.of(context).push<void>(LoginPage.route());

            // Navigator.push(context, LoginPage.route());

            Navigator.of(context).pushReplacement(LoginPage.route());

            // Navigator.of(context).pushAndRemoveUntil(
            //   LoginPage.route(),
            //   (route) => false,
            // );
          },
          value: 'Get Started',
        ),
      ),
    );
  }
}
