import 'package:laundry_app/core/app_images.dart';

import 'app_colors.dart';

import 'package:flutter/material.dart';

class ListtileContainer extends StatelessWidget {
  const ListtileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.list,
      contentPadding: const EdgeInsets.symmetric(horizontal: 25),
      onTap: () {},
      leading: const SizedBox(
        height: 60,
        width: 60,
        child: CircleAvatar(
          backgroundImage: AssetImage(AppImages.profileImage),
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
      subtitleTextStyle:
          const TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis),
      subtitle: const Text(
        'Hello,Hope you`re doing well,thanks for good ',
      ),
      horizontalTitleGap: 10,
    );
  }
}

class Divide extends StatelessWidget {
  const Divide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '-------',
      style: TextStyle(
          fontSize: 17,
          color: AppColors.lightGray,
          fontWeight: FontWeight.w100),
    );
  }
}

class BlueLine extends StatelessWidget {
  const BlueLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 54,
      child: Divider(
        thickness: 2,
        color: AppColors.blue,
      ),
    );
  }
}

class HistoryContainer extends StatelessWidget {
  const HistoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFffffff)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Happy Laundry',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'August 24,2022/07.25 pm',
                        style: TextStyle(color: AppColors.gray, fontSize: 13),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xFF61e8bf),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'Completed',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Divider(
                thickness: 0.3,
                color: AppColors.gray,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Washing',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Cleaing',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Drying',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Deliver',
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
