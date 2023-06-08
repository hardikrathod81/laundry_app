import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/modules/payment/views/payment_page.dart';

import 'package:laundry_app/widgets/app_buttons.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(builder: (context) => const CheckoutPage());
  }

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

// ignore: empty_constructor_bodies
class CartItem {
  String name;
  double price;
  int quantity;

  CartItem({required this.name, required this.price, required this.quantity});
}

class _CheckoutPageState extends State<CheckoutPage> {
  List<CartItem> cartItem = [
    CartItem(name: 'T-shirt', price: 0.5, quantity: 0),
    CartItem(name: 'Jens', price: 0.5, quantity: 0),
    CartItem(name: "Short", price: 0.5, quantity: 0),
    CartItem(name: 'Long Dress', price: 0.5, quantity: 0)
  ];

  int _totalquntity() {
    int totalquantity = 0;
    for (var quan in cartItem) {
      totalquantity += quan.quantity;
    }
    return totalquantity;
  }

  double _calculateTotalValue() {
    double total = 0;
    for (var item in cartItem) {
      total += item.price * item.quantity;
    }
    return total;
  }

  // ignore: unused_element
  double _calculateTotalCartValue() {
    double total = 0.0;
    for (var item in cartItem) {
      total += item.price * item.quantity;
    }
    return total;
  }

  void _addMultipleItemsToCart() {
    for (int i = 1; i <= 1; i++) {
      CartItem newItem = CartItem(
        name: 'Cloths',
        price: 0.5,
        quantity: 0,
      );
      _addItemToCart(newItem);
    }
  }

  void _addItemToCart(CartItem item) {
    setState(() {
      cartItem.add(item);
    });
  }

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
                height: MediaQuery.sizeOf(context).height * 0.18,
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
                          child: InkWell(
                            onTap: () {
                              _addMultipleItemsToCart();
                            },
                            child: const Text(
                              'Add Category',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.35,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: cartItem.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.white),
                            child: ListTile(
                                leading: Container(
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
                                title: Text(
                                  (cartItem[index].name),
                                  style: const TextStyle(
                                      color: AppColors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  '\$  ${cartItem[index].price.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                      color: AppColors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                trailing: SizedBox(
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
                                                width: 0.1,
                                                color: AppColors.gray),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: IconButton(
                                            onPressed: () {
                                              debugPrint('removeitem');
                                              setState(() {
                                                if (cartItem[index].quantity >
                                                    0) {
                                                  cartItem[index].quantity--;
                                                } else {
                                                  cartItem.removeAt(index);
                                                }
                                              });
                                            },
                                            icon: const Icon(
                                              Icons.remove,
                                              size: 17,
                                            )),
                                      ),
                                      Text(
                                        "${cartItem[index].quantity}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.1,
                                                color: AppColors.gray),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: IconButton(
                                            onPressed: () {
                                              debugPrint('additem');
                                              setState(() {
                                                if (cartItem[index].quantity <
                                                    99) {
                                                  cartItem[index].quantity++;
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
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.12,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListTile(
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFeef2f4),
                                  borderRadius: BorderRadius.circular(40)),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Image(
                                    image:
                                        AssetImage('assets/images/apple.png')),
                              )),
                          title: const Text(
                            'Total items',
                            style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            ' ${_totalquntity()} Items ',
                            style: const TextStyle(
                                color: AppColors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Cost",
                                style: TextStyle(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '\$ ${_calculateTotalValue()}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          )),
                    ),
                  ),
                  Container(
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: AppButton(
                          value: "Checkout",
                          onPressed: () {
                            Navigator.push(
                              context,
                              PaymentPage.route(
                                  name: '${_calculateTotalValue()}'),
                            );
                          }),
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
