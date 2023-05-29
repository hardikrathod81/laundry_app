import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/authentication/authentication.dart';
import 'package:laundry_app/modules/home/views/root_page.dart';
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
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFffffff),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                  ),
                  SizedBox(width: 30)
                ],
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Let\'s get started',
                  style: TextStyle(
                      fontSize: 31,
                      fontFamily: 'Inter-Bold',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Login into your account'),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: AppColors.blue,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(width: 30)
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: AppButton(
                  value: 'Login',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      RootPage.route(),
                      (route) => false,
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'Or login with account',
                  style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 50,
                          width: 160,
                          child: Row(
                            children: [
                              SizedBox(width: 35),
                              Image.asset(
                                'assets/images/search.png',
                                height: 14,
                                width: 30,
                              ),
                              Text(
                                'Google',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.3),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 50,
                          width: 160,
                          child: Row(
                            children: [
                              SizedBox(width: 27),
                              Image.asset(
                                'assets/images/facebook.png',
                                height: 15,
                                width: 30,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.3),
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 140),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont\'t have an account?',
                      style: TextStyle(
                          color: AppColors.gray, fontWeight: FontWeight.w600)),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          color: AppColors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}
