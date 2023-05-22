import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/widgets/app_buttons.dart';
import 'package:laundry_app/modules/authentication/authentication.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
      builder: (BuildContext context) => const RegisterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFf2f5f8),
        body: SingleChildScrollView(
          reverse: false,
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Row(
                children: [
                  SizedBox(width: 260),
                  Image(
                      height: 50,
                      width: 30,
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/02.png')),
                  SizedBox(width: 5),
                  Text(
                    'Landtot',
                    style: TextStyle(
                        color: Color(0xFF34ABEF),
                        fontSize: 23,
                        fontFamily: 'Inter-Bold',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 31,
                        fontFamily: 'Inter-Bold',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text('Create new account for you'),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              const SizedBox(height: 40),
              AppButton(
                  value: 'Register',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }),
              const SizedBox(height: 30),
              const SizedBox(height: 30),
              const SizedBox(height: 100),
              Row(
                children: [
                  SizedBox(width: 80),
                  Text('Already have an account?',
                      style: TextStyle(
                          color: AppColors.gray, fontWeight: FontWeight.w600)),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: AppColors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
