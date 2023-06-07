import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';
import 'package:laundry_app/modules/order/checkout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
      builder: (BuildContext context) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.whiteLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: 17,
                            color: AppColors.gray,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColors.blue,
                                size: 19,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Semarang,East java',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 45,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      hintText: 'Find the nearest laundromat',
                      hintStyle: TextStyle(fontSize: 15, color: AppColors.gray),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.blue,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 10,
                      )
                    ],
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 15),
                            const Text(
                              'Roumah laundry',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            const SizedBox(height: 15),
                            const SizedBox(
                              width: 160,
                              child: Text(
                                'Your clothes will finish in 1 Days',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'View Details',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        AppImages.washingMachineBlue,
                        fit: BoxFit.cover,
                        height: 140,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Nearest laundry',
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'See More',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.width * (1 / 1.4),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  padding: const EdgeInsets.only(right: 30),
                  itemBuilder: (context, index) {
                    return const LaundryItemWidget();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LaundryItemWidget extends StatelessWidget {
  const LaundryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CheckoutPage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppImages.wash,
                      height:
                          MediaQuery.of(context).size.width * (1 / 1.4) / 1.5,
                      width: 230,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 8,
                      top: 8,
                      child: SizedBox(
                        height: 35,
                        width: 70,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            backgroundColor: const Color(0xFFf4f7fa),
                          ),
                          icon: const Icon(
                            Icons.star_purple500_outlined,
                            color: Colors.orange,
                            size: 15,
                          ),
                          label: const Text(
                            '5.0',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'Roumah Laundry',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    SizedBox(width: 20),
                    Icon(
                      Icons.location_on,
                      color: AppColors.blue,
                      size: 18,
                    ),
                    SizedBox(width: 2),
                    Text(
                      '250 m',
                      style: TextStyle(
                          color: AppColors.gray, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 50),
                    Text(
                      '\$0.5',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      '/pcs',
                      style: TextStyle(
                          color: AppColors.gray, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
