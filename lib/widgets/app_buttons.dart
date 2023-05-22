import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';

// Widget appButton({required String value, required void Function()? onPressed}) {
//   return ElevatedButton(
//     onPressed: onPressed,
//     child: Text(value),
//   );
// }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.value,
    required this.onPressed,
  });

  final void Function()? onPressed;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 330,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: AppColors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Text(
          value,
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
