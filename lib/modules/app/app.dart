import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_fonts.dart';
import 'package:laundry_app/modules/onboarding/onboarding.dart';

class LaundryApp extends StatelessWidget {
  const LaundryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppFonts.fontFamily),
      home: const OnboardingPage(),
    );
  }
}
