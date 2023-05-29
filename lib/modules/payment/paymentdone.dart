import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/home/views/home_page.dart';
import 'package:laundry_app/modules/order/process/process1.dart';

class PaymentDone extends StatelessWidget {
  const PaymentDone({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(builder: (BuildContext context) => PaymentDone());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 40),
              child: Image.asset('assets/images/done.png'),
            ),
            const Text(
              'Payment Success',
              style: TextStyle(
                  color: Colors.white,
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
            const Spacer(),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFFffffff),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => OrderPage1()));
                    },
                    child: Text(
                      'Details order',
                      style: TextStyle(fontSize: 16, color: AppColors.blue),
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.white)),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      // Navigator.push(context, HomePage.route());
                    },
                    child: Text(
                      'Back home',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
