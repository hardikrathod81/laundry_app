import 'package:flutter/material.dart';
import 'app_colors.dart';

class CheckIcon extends StatelessWidget {
  const CheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
            color: AppColors.blue, borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
