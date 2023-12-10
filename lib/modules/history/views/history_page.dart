import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class HistoryItems {
  HistoryItems(
      {required this.color, required this.process, required this.name});

  final Color color;
  final String process;
  final String name;
}

List<HistoryItems> _items = [
  HistoryItems(
      color: AppColors.yellow, process: "ongoing", name: 'Roumah Laundry'),
  HistoryItems(
      color: AppColors.green, process: 'completed', name: 'Happy Lundry'),
  HistoryItems(
      color: AppColors.green, process: 'completed', name: 'Happy Lundry'),
  HistoryItems(
      color: AppColors.green, process: 'completed', name: 'Happy Lundry'),
  HistoryItems(
      color: AppColors.green, process: 'completed', name: 'Happy Lundry'),
];

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteLight,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 15),
              child: Text(
                'History',
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.white),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          _items[index].name,
                                          style: const TextStyle(
                                              color: AppColors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'August 24,2022/07.25 pm',
                                          style: TextStyle(
                                              color: AppColors.gray,
                                              fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: _items[index].color,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        _items[index].process,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Divider(
                                  thickness: 0.3,
                                  color: AppColors.gray,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              color: AppColors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          'Washing',
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.blue,
                                                  width: 5),
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          'Cleaing',
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              color: AppColors.gray,
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          'Drying',
                                          style: TextStyle(
                                              color: AppColors.gray,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              color: AppColors.gray,
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          'Deliver',
                                          style: TextStyle(
                                              color: AppColors.gray,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )),
            )
          ],
        ),
      ),
    );
  }
}
