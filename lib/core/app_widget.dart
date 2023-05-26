import 'app_colors.dart';

import 'package:flutter/material.dart';

class Listtile1 extends StatelessWidget {
  const Listtile1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.list,
      contentPadding: const EdgeInsets.symmetric(horizontal: 25),
      onTap: () {},
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
          color: AppColors.lightgray,
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
