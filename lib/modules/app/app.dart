import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/onboarding/onboarding.dart';
import 'package:laundry_app/services/Provider/theme_changer.dart';
import 'package:provider/provider.dart';

class LaundryApp extends StatelessWidget {
  const LaundryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final themeChanger = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeChanger.thememode,
          theme: ThemeData(
              brightness: Brightness.light, primaryColor: AppColors.whiteLight),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primaryColorDark: AppColors.black,
          ),
          home: const OnboardingPage(),
        );
      },
    );
  }
}
