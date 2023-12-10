import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';
import 'package:laundry_app/modules/home/views/root_page.dart';
import 'package:laundry_app/widgets/app_buttons.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(builder: (context) => const RegisterPage());
  }

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _name = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 31,
                            fontFamily: 'Inter-Bold',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text('Create new account for you'),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: TextFormField(
                        controller: _name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Name';
                          } else if (value.length < 3) {
                            return 'Please Enter 3 and More character';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 70,
                      child: TextFormField(
                        controller: _email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Email id';
                          } else if (!RegExp(
                                  r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                              .hasMatch(value)) {
                            return 'Please enter valid email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    const Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        height: 70,
                        child: TextFormField(
                          controller: _password,
                          validator: (value) {
                            if (value == null) {
                              return 'Please Enter Password';
                            } else if (value.length <= 8) {
                              return 'Enter 8 and more character';
                            }
                            return null;
                          },
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(_obscureText
                                      ? Icons.remove_red_eye
                                      : Icons.visibility_off)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: AppButton(
                        value: 'Register',
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              RootPage.route(),
                              (route) => false,
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 200),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?',
                            style: TextStyle(
                                color: AppColors.gray,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
