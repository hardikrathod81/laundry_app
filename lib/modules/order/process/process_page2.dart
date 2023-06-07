import 'package:flutter/material.dart';

import 'package:laundry_app/core/app_images.dart';
import 'package:laundry_app/widgets/app_widget.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/order/process/process_page3.dart';

class ProcessPage2 extends StatelessWidget {
  const ProcessPage2({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(builder: (context) => const ProcessPage2());
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
                          Navigator.pop(context);
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
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CircleAvatar(
                backgroundColor: const Color(0xFFf1f3f6),
                radius: 70,
                child: AspectRatio(
                  aspectRatio: 1 / 1.6,
                  child: Image.asset(AppImages.processedimage1),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: Text(
                'Your clothes are still washed. will be finished soon.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(children: [
                const CheckIcon(),
                const BlueLine(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, ProcessPage3.route());
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: AppColors.blue, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(AppImages.processedimage1)),
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
                      border: Border.all(color: AppColors.lightGray, width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(AppImages.processimage3)),
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
                      border: Border.all(color: AppColors.lightGray, width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(AppImages.processimage4)),
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
                          color: AppColors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
                      'Finish in 1 days',
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
