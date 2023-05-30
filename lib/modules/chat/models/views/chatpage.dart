import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  // static MaterialPageRoute<void> route() {
  //   return MaterialPageRoute(builder: (BuildContext context) => ChatPage());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f5f8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 15),
              child: Text(
                'Chats',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 6),
                        height: 60,
                        width: 340,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          cursorHeight: 20,
                          decoration: InputDecoration(
                              hintText: 'Search in chats',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: AppColors.gray),
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.search,
                                size: 35,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.push_pin,
                            color: AppColors.gray,
                          ),
                          Text(
                            'Pinned message',
                            style: TextStyle(color: AppColors.gray),
                          )
                        ],
                      ),
                    ),
                    const Listtile1(),
                    const Listtile1(),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        'All message',
                        style: TextStyle(color: AppColors.gray),
                      ),
                    ),
                    SizedBox(
                      child: ListView.builder(
                        itemExtent: 80,
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const Listtile1();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
