import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/history/history.dart';
import 'package:laundry_app/modules/chat/models/chatpage.dart';
import 'package:laundry_app/modules/history/history1.dart';
import 'package:laundry_app/modules/profile/profile.dart';
import 'package:laundry_app/modules/order/checkout.dart';

import 'package:laundry_app/modules/order/process/trackorder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
      builder: (BuildContext context) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFf2f5f8),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Current Location',
                    style: TextStyle(
                        fontSize: 17,
                        color: AppColors.gray,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.blue,
                          size: 19,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Semarang,East java',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(width: 120),
              Container(
                margin: const EdgeInsets.all(8),
                height: 50,
                width: 45,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HistoryPage()));
                    },
                    icon: const Icon(Icons.notifications_none)),
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            height: 60,
            width: 340,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const TextField(
              cursorHeight: 20,
              decoration: InputDecoration(
                  hintText: 'Find the nearest laundromat',
                  hintStyle: TextStyle(fontSize: 15, color: AppColors.gray),
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    size: 35,
                  )),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: AppColors.blue,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 10)
                  ],
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        const Text(
                          'Roumah laundry',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(height: 15),
                        const SizedBox(
                          width: 160,
                          child: Text(
                            'Your clothes will finish in 1 Days',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (Context) => const ProfilePage()));
                          },
                          child: const Text(
                            'View Details',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/03.png',
                    fit: BoxFit.cover,
                    height: 140,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Nearest laundry',
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See More',
                    style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 265,
                      width: 230,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/wash.jpg',
                              ),
                              alignment: Alignment(0, -1))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Align(
                            alignment: const Alignment(-0.9, 0),
                            child: SizedBox(
                              height: 35,
                              width: 70,
                              child: ElevatedButton.icon(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      backgroundColor: const Color(0xFFf4f7fa)),
                                  icon: const Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange,
                                    size: 15,
                                  ),
                                  label: const Text(
                                    '5.0',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                          const SizedBox(height: 160),
                          const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Roumah Laundry',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              SizedBox(width: 20),
                              Icon(
                                Icons.location_on,
                                color: AppColors.blue,
                                size: 18,
                              ),
                              SizedBox(width: 2),
                              Text(
                                '250 m',
                                style: TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 50),
                              Text(
                                '\$0.5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                '/pcs',
                                style: TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => History1()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 265,
                      width: 230,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/wash.jpg',
                              ),
                              alignment: Alignment(0, -1))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Align(
                            alignment: const Alignment(-0.9, 0),
                            child: SizedBox(
                              height: 35,
                              width: 70,
                              child: ElevatedButton.icon(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      backgroundColor: const Color(0xFFf4f7fa)),
                                  icon: const Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange,
                                    size: 15,
                                  ),
                                  label: const Text(
                                    '5.0',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                          const SizedBox(height: 160),
                          const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Roumah Laundry',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              SizedBox(width: 20),
                              Icon(
                                Icons.location_on,
                                color: AppColors.blue,
                                size: 18,
                              ),
                              SizedBox(width: 2),
                              Text(
                                '250 m',
                                style: TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 50),
                              Text(
                                '\$0.5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                '/pcs',
                                style: TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TrackOrderPage()));
                  },
                  child: Container(
                    height: 265,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/wash.jpg',
                            ),
                            alignment: Alignment(0, -1))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Align(
                          alignment: const Alignment(-0.9, 0),
                          child: SizedBox(
                            height: 35,
                            width: 70,
                            child: ElevatedButton.icon(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    backgroundColor: const Color(0xFFf4f7fa)),
                                icon: const Icon(
                                  Icons.star_purple500_outlined,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                                label: const Text(
                                  '5.0',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        const SizedBox(height: 160),
                        const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Roumah Laundry',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            )),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(
                              Icons.location_on,
                              color: AppColors.blue,
                              size: 18,
                            ),
                            SizedBox(width: 2),
                            Text(
                              '250 m',
                              style: TextStyle(
                                  color: AppColors.gray,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 50),
                            Text(
                              '\$0.5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              '/pcs',
                              style: TextStyle(
                                  color: AppColors.gray,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 265,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/wash.jpg',
                            ),
                            alignment: Alignment(0, -1))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Align(
                          alignment: const Alignment(-0.9, 0),
                          child: SizedBox(
                            height: 35,
                            width: 70,
                            child: ElevatedButton.icon(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    backgroundColor: const Color(0xFFf4f7fa)),
                                icon: const Icon(
                                  Icons.star_purple500_outlined,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                                label: const Text(
                                  '5.0',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        const SizedBox(height: 160),
                        const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Roumah Laundry',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            )),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(
                              Icons.location_on,
                              color: AppColors.blue,
                              size: 18,
                            ),
                            SizedBox(width: 2),
                            Text(
                              '250 m',
                              style: TextStyle(
                                  color: AppColors.gray,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 50),
                            Text(
                              '\$0.5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              '/pcs',
                              style: TextStyle(
                                  color: AppColors.gray,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (value) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatPage()));
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedIconTheme:
              const IconThemeData(color: AppColors.blue, size: 30),
          selectedItemColor: AppColors.blue,
          showUnselectedLabels: true,
          unselectedItemColor: AppColors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                  color: Colors.black,
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
