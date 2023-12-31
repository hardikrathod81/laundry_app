import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';
import 'package:laundry_app/modules/process/widget/process_widgets.dart';
import 'package:laundry_app/modules/process/views/process_page2.dart';

class User {
  int age;
  String name;
  String surname;

  User({required this.name, required this.age, required this.surname});
}

class ProcessPage1 extends StatefulWidget {
  const ProcessPage1({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: 'OrderPage'),
        builder: (BuildContext context) => const ProcessPage1());
  }

  @override
  State<ProcessPage1> createState() => _ProcessPage1State();
}

class _ProcessPage1State extends State<ProcessPage1> {
  final StreamController _countdownController = StreamController();
  final StreamController<User> streamController = StreamController<User>();
  Stream get countdownStream => _countdownController.stream;

  User user = User(name: 'hardik', age: 22, surname: 'rathod');

  incressAge() {
    user.age++;
    streamController.add(user);
  }

  addToName() {
    user.name += 'A';
    streamController.add(user);
  }

  void startCountDown(int seconds) {
    int count = seconds;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (count >= 0) {
        _countdownController.add(count);
        count--;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startCountDown(10);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.popUntil(context, (route) {
                            return route.settings.name == 'RootPage';
                          });
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                  const Text(
                    'Details order',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: CircleAvatar(
                      foregroundColor: Color(0xFFf5f8fa),
                      radius: 70,
                      foregroundImage: AssetImage(AppImages.processImage1),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                    child: Text(
                      'Your clothes are still washed. will be finished soon.',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Row(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, ProcessPage2.route());
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(color: AppColors.blue, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage(AppImages.processImage1)),
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                        ),
                      ),
                      const Divide(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                                color: AppColors.lightGray, width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(AppImages.processImage2)),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                      ),
                      const Divide(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                                color: AppColors.lightGray, width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(AppImages.processImage3)),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                      ),
                      const Divide(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                                color: AppColors.lightGray, width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(AppImages.processImage4)),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Washing',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            'Cleaning',
                            style: TextStyle(
                                fontSize: 11,
                                color: AppColors.lightGray,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 14),
                          child: Text(
                            'Dying',
                            style: TextStyle(
                                fontSize: 11,
                                color: AppColors.lightGray,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            'Deliver',
                            style: TextStyle(
                                fontSize: 11,
                                color: AppColors.lightGray,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '#2134587643',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                              color: const Color(0xFFffca43),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Ongoing',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'laundry in',
                          style: TextStyle(
                              color: AppColors.gray,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'August 24,2022/07.25 pm',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery address',
                          style: TextStyle(
                              color: AppColors.gray,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 180,
                          child: Text(
                            'Jl.Sempit lebar panjang no 30 gang buntu',
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Estimated time',
                    style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Finish in 2 days',
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            // StreamBuilder(
            //     stream: countdownStream,
            //     builder: (context, snapshot) {
            //       if (snapshot.hasData) {
            //         return Text(
            //           '${snapshot.data}',
            //           style: const TextStyle(fontSize: 20),
            //         );
            //       } else if (snapshot.connectionState ==
            //           ConnectionState.waiting) {
            //         return const CircularProgressIndicator();
            //       } else if (snapshot.hasError) {
            //         return ErrorWidget('erorr');
            //       }
            //       throw ErrorWidget("Error");
            //     }),
            // StreamBuilder(
            //   initialData: user,
            //   stream: streamController.stream,
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       return Column(children: [
            //         Text(user.name),
            //         Text(user.surname),
            //         Text('${user.age}'),
            //         FloatingActionButton(
            //           onPressed: _incressAge,
            //           child: const Text('incress age'),
            //         ),
            //         FloatingActionButton(
            //           heroTag: null,
            //           onPressed: _addToName,
            //           child: const Text('incress name'),
            //         )
            //       ]);
            //     }

            //     return const CircularProgressIndicator();
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
