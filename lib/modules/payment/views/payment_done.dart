import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';

import 'package:laundry_app/modules/process/views/process_page1.dart';

class PaymentDone extends StatelessWidget {
  const PaymentDone({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
        builder: (BuildContext context) => const PaymentDone());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Image.asset(AppImages.processDone),
                ),
                const Text(
                  'Payment Success',
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Text(
                    'Your payment was successfuk. just wait your cleanes arruive at home',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.1,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFFffffff),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context, ProcessPage1.route(), (route) {
                            return route.isFirst;
                          });
                        },
                        child: const Text(
                          'Details order',
                          style: TextStyle(fontSize: 16, color: AppColors.blue),
                        ),
                      ),
                    )),
                Padding(
                    padding:
                        const EdgeInsets.only(bottom: 30, left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: AppColors.white)),
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          // Navigator.of(context)
                          //     .popUntil(ModalRoute.withName('RootPage'));
                          Navigator.popUntil(context, (route) {
                            // return route.isFirst;
                            return route.settings.name == 'RootPage';
                          });
                          // int index = 0;
                          // Navigator.of(context).popUntil((route) {
                          //   index += 1;
                          //   return index == 3;
                          // });
                        },
                        child: const Text(
                          'Back home',
                          style:
                              TextStyle(fontSize: 16, color: AppColors.white),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
