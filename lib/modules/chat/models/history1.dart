import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';

class History1 extends StatelessWidget {
  const History1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f8fa),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 50),
            child: Image.asset('assets/images/cat.png'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              'No laundry history yet',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              'Let`s do laundry transactions now and feel the convenience',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
