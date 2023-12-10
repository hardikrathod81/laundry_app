import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';
import 'package:laundry_app/modules/payment/views/payment_done.dart';

import 'package:laundry_app/widgets/app_buttons.dart';

enum RadioButton { selfservice, deliveryService }

enum PaymentRadioButton { applepay, creditcard, paypal }

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    super.key,
    required this.name,
  });

  final String name;

  static MaterialPageRoute<void> route({required String name}) {
    return MaterialPageRoute(
      builder: (context) => PaymentPage(name: name),
    );
  }

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

RadioButton _value = RadioButton.selfservice;
PaymentRadioButton _paymentRadioButton = PaymentRadioButton.applepay;

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f8fa),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.966,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.1),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back)),
                        ),
                        const Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.1),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ListTile(
                          horizontalTitleGap: 1,
                          title: const Text(
                            'Self service',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          leading: Radio(
                              fillColor: const MaterialStatePropertyAll(
                                  AppColors.blue),
                              value: RadioButton.selfservice,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = RadioButton.selfservice;
                                });
                              }),
                        ),
                        const Divider(thickness: 1),
                        ListTile(
                          minVerticalPadding: 3,
                          horizontalTitleGap: 1,
                          title: const Text(
                            'Delivery service',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.only(top: 10, right: 20),
                            child: Text(
                                'Jl.Sempit lebar panjang no 30 gang buntu'),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: Radio(
                                fillColor: const MaterialStatePropertyAll(
                                    AppColors.blue),
                                value: RadioButton.deliveryService,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = RadioButton.deliveryService;
                                  });
                                }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Edit Address',
                              style: TextStyle(
                                  color: AppColors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Payment method',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFeef2f4),
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image(
                                      image: AssetImage(AppImages.appleLogo)),
                                )),
                            title: const Text(
                              'Apple pay',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Radio(
                                fillColor: const MaterialStatePropertyAll(
                                    AppColors.blue),
                                value: PaymentRadioButton.applepay,
                                groupValue: _paymentRadioButton,
                                onChanged: (value) {
                                  setState(() {
                                    _paymentRadioButton =
                                        PaymentRadioButton.applepay;
                                  });
                                }),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Divider(thickness: 1),
                          ),
                          ListTile(
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
                                          AssetImage(AppImages.mastercardLogo)),
                                )),
                            title: const Text(
                              'Credit Card',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Radio(
                                fillColor: const MaterialStatePropertyAll(
                                    AppColors.blue),
                                value: PaymentRadioButton.creditcard,
                                groupValue: _paymentRadioButton,
                                onChanged: (value) {
                                  setState(() {
                                    _paymentRadioButton =
                                        PaymentRadioButton.creditcard;
                                  });
                                }),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Divider(thickness: 1),
                          ),
                          ListTile(
                            leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFeef2f4),
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Image(
                                      image: AssetImage(AppImages.paypalLogo)),
                                )),
                            title: const Text(
                              'Pay Pal',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Radio(
                                fillColor: const MaterialStatePropertyAll(
                                    AppColors.blue),
                                value: PaymentRadioButton.paypal,
                                groupValue: _paymentRadioButton,
                                onChanged: (value) {
                                  setState(() {
                                    _paymentRadioButton =
                                        PaymentRadioButton.paypal;
                                  });
                                }),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 18),
                            child: Text(
                              'Add new method',
                              style: TextStyle(
                                  color: AppColors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: AppButton(
                        value: 'Pay (\$ ${widget.name} )',
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context, PaymentDone.route(), (route) {
                            return route.isFirst;
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
