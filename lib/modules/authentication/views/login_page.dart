import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';
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
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(
                          height: 50,
                          width: 30,
                          fit: BoxFit.contain,
                          image: AssetImage(AppImages.logo)),
                      SizedBox(width: 5),
                      Text(
                        'Landtot',
                        style: TextStyle(
                            color: Color(0xFF34ABEF),
                            fontSize: 23,
                            fontFamily: 'Inter-Bold',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    'Let\'s get started',
                    style: TextStyle(
                        fontSize: 31,
                        fontFamily: 'Inter-Bold',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Login into your account'),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, bottom: 10, top: 10),
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
                const Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.055,
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                child: Row(
                                  children: [
                                    SizedBox(width: 35),
                                    Image.asset(
                                      AppImages.goole,
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
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.055,
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              child: Row(
                                children: [
                                  SizedBox(width: 27),
                                  Image.asset(
                                    AppImages.facbook,
                                    height: 15,
                                    width: 30,
                                  ),
                                  Text(
                                    'Facebook',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                ),
                const SizedBox(height: 160),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont\'t have an account?',
                        style: TextStyle(
                            color: AppColors.gray,
                            fontWeight: FontWeight.w600)),
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
              ],
            ),
          ),
        ));
  }
}
