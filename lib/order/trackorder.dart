import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/widgets/app_buttons.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Padding(
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
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back)),
                      ),
                      const Text(
                        'Track Order',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/trackorder.png'))),
              ),
            ],
          ),
          Container(
            height: 240.9,
            decoration: const BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/04.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Robby mayes',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                                Text(
                                  'Robby mayes',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white54),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.call,
                                    color: AppColors.blue,
                                  )),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.chat,
                                    color: AppColors.blue,
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 160,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Delivery address',
                                    style: TextStyle(
                                        color: AppColors.gray,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: AppColors.blue,
                                        size: 17,
                                      ),
                                      Text(
                                        'Jl.Sempit no 90 buntu',
                                        style: TextStyle(
                                            fontSize: 12.8,
                                            color: AppColors.gray,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Delivery time',
                                    style: TextStyle(
                                        color: AppColors.gray,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: AppColors.blue,
                                        size: 17,
                                      ),
                                      Text(
                                        '10.23 PM',
                                        style: TextStyle(
                                            fontSize: 12.8,
                                            color: AppColors.gray,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child:
                            AppButton(value: 'See details', onPressed: () {}),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}