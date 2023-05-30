import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_checkicon.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_widget.dart';
import 'package:laundry_app/modules/order/process/trackorder.dart';
import 'package:laundry_app/widgets/app_buttons.dart';

class ProcessPage4 extends StatelessWidget {
  const ProcessPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(children: [
                  const CheckIcon(),
                  const BlueLine(),
                  const CheckIcon(),
                  const BlueLine(),
                  const CheckIcon(),
                  const BlueLine(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: AppColors.blue, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/icon3.png')),
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                  ),
                ]),
              ),
              const Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Cleaning',
                        style: TextStyle(
                            fontSize: 11,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Dying',
                        style: TextStyle(
                            fontSize: 11,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        'Deliver',
                        style: TextStyle(
                            fontSize: 11,
                            color: AppColors.black,
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                        'Arrive in 30 Minutes ',
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image: AssetImage('assets/images/trackorder.png'))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AppButton(
                    value: 'Track Order',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrackOrderPage()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
