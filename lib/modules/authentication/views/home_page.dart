import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
        builder: (BuildContext context) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f5f8),
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Location',
                    style: TextStyle(
                        fontSize: 17,
                        color: AppColors.gray,
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    children: [
                      IconButton(
                          alignment: Alignment(-2, 0),
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_on_rounded,
                            color: AppColors.blue,
                            size: 19,
                          )),
                      Text(
                        'Semarang,East java',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(width: 100),
              Container(
                height: 50,
                width: 50,
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_none)),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
