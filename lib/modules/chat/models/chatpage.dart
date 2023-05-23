import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f5f8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Text(
                'Chats',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
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
                      hintStyle: TextStyle(fontSize: 15, color: AppColors.gray),
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
              padding: EdgeInsets.symmetric(horizontal: 30),
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: Colors.amberAccent,
                height: 1000,
                width: 400,
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      minLeadingWidth: 4,
                      leadingAndTrailingTextStyle:
                          TextStyle(overflow: TextOverflow.ellipsis),
                      leading: CircleAvatar(
                        radius: 30,
                        foregroundImage: AssetImage('assets/images/wash.jpg'),
                      ),
                      title: Text(
                        'Lily Alesta',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      titleAlignment: ListTileTitleAlignment.top,
                      subtitleTextStyle: TextStyle(
                          height: -0.1,
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis),
                      subtitle: Text(
                        'Hello,Hope you`re doing well,  ',
                      ),
                      trailing: Text(
                        '12.35 pm',
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(thickness: 2);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
