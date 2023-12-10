import 'package:laundry_app/core/app_colors.dart';

import 'package:flutter/material.dart';

class Divide extends StatelessWidget {
  const Divide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '----------',
      style: TextStyle(
          fontSize: 18,
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
