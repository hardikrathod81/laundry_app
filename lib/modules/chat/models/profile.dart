import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(builder: (BuildContext context) => ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFf2f5f8),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 260),
            child: Text(
              'Profile',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: CircleAvatar(
              radius: 50,
              foregroundImage: AssetImage('assets/images/04.jpg'),
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
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "ID : 2198657",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.white,
              leading: CircleAvatar(
                foregroundColor: AppColors.gray,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      color: AppColors.blue,
                    )),
              ),
              title: const Text(
                'Account',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: AppColors.gray,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.white,
              leading: CircleAvatar(
                foregroundColor: AppColors.gray,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.language,
                      color: AppColors.blue,
                    )),
              ),
              title: const Text(
                'Languange',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: AppColors.gray,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.white,
              leading: CircleAvatar(
                foregroundColor: AppColors.gray,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      color: AppColors.blue,
                    )),
              ),
              title: const Text(
                'Notification',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: AppColors.gray,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.white,
              leading: CircleAvatar(
                foregroundColor: AppColors.gray,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: AppColors.blue,
                    )),
              ),
              title: const Text(
                'Prefernce',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: AppColors.gray,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Colors.white,
              leading: CircleAvatar(
                foregroundColor: AppColors.gray,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.help,
                      color: AppColors.blue,
                    )),
              ),
              title: const Text(
                'Help & Center',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: AppColors.gray,
              ),
            ),
          )
        ],
      ),
    );
  }
}
