import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/authentication/authentication.dart';
import 'package:laundry_app/widgets/app_buttons.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(
            height: 300, width: 395, image: AssetImage('assets/images/01.jpg')),
        Container(
          height: 550.9,
          width: 400,
          color: Color(0xFF34ABEF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    'The best solution \nfor cleaning your \nclothes',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    'Find the best and closest laundery place to \nyou,cleaned with the best washing \nmachine so it doesn`t reduce the quality of \nyour clothes ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 200),
              SizedBox(
                  height: 60,
                  width: 330,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(LoginPage.route());
                    },
                    child: Text(
                      'Get started',
                      style: TextStyle(color: AppColors.blue, fontSize: 17),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
