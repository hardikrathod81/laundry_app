import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/payment/views/paymentpage.dart';

import 'package:laundry_app/widgets/app_buttons.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

int number1 = 0;
int number2 = 0;
int number3 = 0;
int number4 = 0;

var sum = number1 + number2;

class Dash {
  int count = number1 + number2 + number3 + number4;
  double price = 0.5;

  double totalprice() {
    return count * price;
  }
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.whiteLight,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Roumah Laundry',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.1)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.blue,
                            size: 17,
                          ),
                          Text(
                            'Jl.Sempit no 90 buntu',
                            style: TextStyle(
                                fontSize: 12.8,
                                color: AppColors.gray,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 0.1)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFfda563),
                            size: 17,
                          ),
                          Text(
                            '5.0 (324 Review)',
                            style: TextStyle(
                                fontSize: 13.8,
                                color: AppColors.gray,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Container(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/wash.jpg')),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFe7e9ec),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 30, left: 30, top: 15, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Order list',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        InkWell(
                          onTap: () {
                            debugPrint('Add category is tap');
                          },
                          child: const Text(
                            'Add Category',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFeef2f4),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/apple.png')),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 13),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'T-Shirt',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$ 0.5',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1, color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (number1 > 0) {
                                              number1--;
                                            }
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 17,
                                        )),
                                  ),
                                  Text(
                                    '$number1',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1, color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (number1 < 99) {
                                              number1++;
                                            }
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          size: 17,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFeef2f4),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/apple.png')),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 13),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jeans',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$ 0.5',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1, color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (number2 > 0) {
                                              number2--;
                                            }
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 17,
                                        )),
                                  ),
                                  Text(
                                    '$number2',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1, color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (number2 < 99) {
                                              number2++;
                                            }
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          size: 17,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFeef2f4),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/apple.png')),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 13),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Short',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$ 0.5',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1, color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (number3 > 0) {
                                              number3--;
                                            }
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 17,
                                        )),
                                  ),
                                  Text(
                                    '$number3',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1, color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (number3 < 99) {
                                              number3++;
                                            }
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          size: 17,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFeef2f4),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/apple.png')),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13, vertical: 13),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Long dress',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$ 0.5',
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1, color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (number4 > 0) {
                                              number4 -= sum;
                                            }
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 17,
                                        )),
                                  ),
                                  Text(
                                    '$number4',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1, color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (number4 < 99) {
                                              number4++;
                                            }
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          size: 17,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height / 1 / 5,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: SizedBox(
                        height: 40,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFFeef2f4),
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: const Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/apple.png')),
                                          )),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Total items",
                                              style: TextStyle(
                                                  color: AppColors.gray,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              '$sum',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cost",
                                        style: TextStyle(
                                            color: AppColors.gray,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '\$2.0',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 30, right: 30, left: 30),
                              child: AppButton(
                                  value: "Checkout",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PaymentPage()));
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
