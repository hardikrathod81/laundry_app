import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(builder: (BuildContext context) => ChatPage());
  }

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
                    fontSize: 25,
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
            ListTile(
              style: ListTileStyle.list,
              contentPadding: const EdgeInsets.symmetric(horizontal: 25),
              onTap: () {
                print('object');
              },
              onLongPress: () {},
              leading: const SizedBox(
                height: 60,
                width: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/04.jpg'),
                ),
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lily Alesta',
                    style: TextStyle(
                        height: -1,
                        color: AppColors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '12:30 pm',
                    style: TextStyle(
                      height: -1.8,
                      color: AppColors.gray,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              subtitleTextStyle: const TextStyle(
                  fontSize: 14, overflow: TextOverflow.ellipsis),
              subtitle: const Text(
                'Hello,Hope you`re doing well,thanks for good ',
              ),
              horizontalTitleGap: 10,
            ),
            ListTile(
              style: ListTileStyle.list,
              contentPadding: const EdgeInsets.symmetric(horizontal: 25),
              onTap: () {
                print('object');
              },
              onLongPress: () {},
              leading: const SizedBox(
                height: 60,
                width: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/04.jpg'),
                ),
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lily Alesta',
                    style: TextStyle(
                        height: -1,
                        color: AppColors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '12:30 pm',
                    style: TextStyle(
                      height: -1.8,
                      color: AppColors.gray,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              subtitleTextStyle: const TextStyle(
                  fontSize: 14, overflow: TextOverflow.ellipsis),
              subtitle: const Text(
                'Hello,Hope you`re doing well,thanks for good ',
              ),
              horizontalTitleGap: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'All message',
                style: TextStyle(color: AppColors.gray),
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemExtent: 80,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    style: ListTileStyle.list,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                    onTap: () {
                      print('object');
                    },
                    onLongPress: () {},
                    leading: const SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/04.jpg'),
                      ),
                    ),
                    title: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lily Alesta',
                          style: TextStyle(
                              height: -1,
                              color: AppColors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '12:30 pm',
                          style: TextStyle(
                            height: -1.8,
                            color: AppColors.gray,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    subtitleTextStyle: const TextStyle(
                        fontSize: 14, overflow: TextOverflow.ellipsis),
                    subtitle: const Text(
                      'Hello,Hope you`re doing well,thanks for good ',
                    ),
                    horizontalTitleGap: 10,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
