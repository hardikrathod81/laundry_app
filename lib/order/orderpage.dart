import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';

class OrderPage1 extends StatelessWidget {
  const OrderPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
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
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: CircleAvatar(
              foregroundColor: Color(0xFFf5f8fa),
              radius: 50,
              foregroundImage: AssetImage('assets/images/05.png'),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              'Your clothes are still washed.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Text(
              'will be finished soon.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 200),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
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
                    'Finish in 2 days',
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
    );
  }
}
