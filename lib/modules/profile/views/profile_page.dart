import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
        builder: (BuildContext context) => const ProfilePage());
  }

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class ProfileItems {
  ProfileItems({required this.icon, required this.name});

  final IconData icon;
  final String name;
}

class _ProfilePageState extends State<ProfilePage> {
  final List<ProfileItems> _items = [
    ProfileItems(icon: Icons.person, name: 'Account'),
    ProfileItems(icon: Icons.language, name: 'Languange'),
    ProfileItems(icon: Icons.notifications, name: 'Notification'),
    ProfileItems(icon: Icons.settings, name: 'Preference'),
    ProfileItems(icon: Icons.help, name: 'Help & Center'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.whiteLight,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppColors.whiteLight,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Profile',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: CircleAvatar(
                radius: 50,
                foregroundImage: AssetImage(AppImages.profileImage),
              ),
            ),
            const Text(
              'Jordan Bayes',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "ID : 2198657",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
            ListView.builder(
              itemCount: _items.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Colors.white,
                    leading: CircleAvatar(
                      foregroundColor: AppColors.gray,
                      child: Icon(
                        _items[index].icon,
                        color: AppColors.blue,
                      ),
                    ),
                    title: Text(
                      _items[index].name,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: AppColors.gray,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
