import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';

class ChatItems {
  final String name;
  ChatItems({required this.name});
}

List<ChatItems> _items = [
  ChatItems(name: 'Dawny Jhonson'),
  ChatItems(name: 'Helen Dope'),
  ChatItems(name: 'Simmons Miles'),
  ChatItems(name: 'Elien Brahman'),
  ChatItems(name: 'Dawny Jhonson'),
  ChatItems(name: 'Dawny Jhonson'),
];

class ChatPinItems {
  final String name;
  ChatPinItems({required this.name});
}

List<ChatPinItems> _pinitems = [
  ChatPinItems(name: 'Lily Alesta'),
  ChatPinItems(name: 'jhon Cornor'),
];

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
  });

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
        builder: (BuildContext context) => const ChatPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteLight,
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
                    SizedBox(
                      child: ListView.builder(
                        itemCount: _pinitems.length,
                        shrinkWrap: true,
                        itemExtent: 80,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            style: ListTileStyle.list,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 25),
                            onTap: () {},
                            leading: const SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(AppImages.profileImage),
                              ),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _pinitems[index].name,
                                  style: const TextStyle(
                                      height: -1,
                                      color: AppColors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
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
                              'Hello, Hope you`re doing well,thanks for good ',
                            ),
                            horizontalTitleGap: 10,
                          );
                        },
                      ),
                    ),
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
                        itemCount: _items.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            style: ListTileStyle.list,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 25),
                            onTap: () {},
                            leading: const SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(AppImages.profileImage),
                              ),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _items[index].name,
                                  style: const TextStyle(
                                      height: -1,
                                      color: AppColors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
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
                              'Hello, Hope you`re doing well,thanks for good ',
                            ),
                            horizontalTitleGap: 10,
                          );
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
