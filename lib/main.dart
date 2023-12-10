import 'package:flutter/material.dart';
import 'package:laundry_app/modules/app/app.dart';
import 'package:laundry_app/services/Provider/provider.dart';
import 'package:laundry_app/services/Provider/theme_changer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => Count(),
      ),
      ChangeNotifierProvider(create: (context) => ThemeChangerProvider())
    ], child: const LaundryApp()),
  );
}
