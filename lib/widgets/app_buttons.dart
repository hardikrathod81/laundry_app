import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(value),
    );
  }
}
