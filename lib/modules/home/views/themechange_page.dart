import 'package:flutter/material.dart';
import 'package:laundry_app/services/Provider/theme_changer.dart';
import 'package:provider/provider.dart';

class ThemeChangePage extends StatefulWidget {
  const ThemeChangePage({super.key});

  @override
  State<ThemeChangePage> createState() => _ThemeChangePageState();
}

class _ThemeChangePageState extends State<ThemeChangePage> {
  @override
  Widget build(BuildContext context) {
    final themeChener = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
                title: const Text(
                  'Light Theme',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.bold),
                ),
                value: ThemeMode.light,
                groupValue: themeChener.thememode,
                onChanged: themeChener.setTheme),
            RadioListTile<ThemeMode>(
                title: const Text(
                  'Dark Theme',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.bold),
                ),
                value: ThemeMode.dark,
                groupValue: themeChener.thememode,
                onChanged: themeChener.setTheme),
            RadioListTile<ThemeMode>(
                title: const Text(
                  'System Theme',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.bold),
                ),
                value: ThemeMode.system,
                groupValue: themeChener.thememode,
                onChanged: themeChener.setTheme),
          ],
        ),
      ),
    );
  }
}
