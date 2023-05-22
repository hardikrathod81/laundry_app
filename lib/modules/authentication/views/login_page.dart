import 'package:flutter/material.dart';
import 'package:laundry_app/widgets/app_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
      builder: (BuildContext context) => const LoginPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppButton(
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.of(context).pop();
            }
          },
          value: 'Login Page',
        ),
      ),
    );
  }
}
