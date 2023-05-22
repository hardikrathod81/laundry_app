import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/authentication/authentication.dart';
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
        body: Column(
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
                  'Let\'s get started',
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
                Text('Login into your account'),
              ],
            ),
            const SizedBox(height: 30),
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
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 250),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: AppColors.blue,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(height: 40),
            AppButton(value: 'Login', onPressed: () {}),
            const SizedBox(height: 30),
            const Text(
              'Or login with account',
              style: TextStyle(
                  color: AppColors.gray,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 30),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 50,
                      width: 160,
                      child: Row(
                        children: [
                          const SizedBox(width: 35),
                          Image.asset(
                            'assets/images/search.png',
                            height: 14,
                            width: 30,
                          ),
                          const Text(
                            'Google',
                            style: const TextStyle(fontWeight: FontWeight.bold),
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
            SizedBox(height: 100),
            Row(
              children: [
                SizedBox(width: 80),
                Text('Dont\'t have an account?',
                    style: TextStyle(
                        color: AppColors.gray, fontWeight: FontWeight.w600)),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: AppColors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
