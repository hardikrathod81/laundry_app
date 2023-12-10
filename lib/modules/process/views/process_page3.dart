import 'package:flutter/material.dart';
import 'package:laundry_app/modules/process/widget/process_widgets.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';
import 'package:laundry_app/widgets/app_widget.dart';
import 'package:laundry_app/modules/process/views/process_page4.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Album {
  final int? id;
  final String? title;

  Album({required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(id: json['id'], title: json['title']);
  }
}

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Faild to load ALbum");
  }
}

Future<Album> updateAlbum(String title) async {
  final http.Response response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{'title': title}));
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  }
  if (response.statusCode == 201) {
    throw Exception('failed to create album');
  } else {
    throw Exception('failed to load   album');
  }
}

Future<Album> deleteAlbum(String id) async {
  final http.Response responce = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
      headers: <String, String>{
        'Content-Tyoe': 'application/json; charset=UTF-8'
      });
  if (responce.statusCode == 200) {
    return Album.fromJson(jsonDecode(responce.body));
  } else {
    throw Exception('Failed to Delete Album');
  }
}

class ProcessPage3 extends StatefulWidget {
  const ProcessPage3({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(builder: (context) => const ProcessPage3());
  }

  @override
  State<ProcessPage3> createState() => _ProcessPage3State();
}

class _ProcessPage3State extends State<ProcessPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                  const Text(
                    'Details order',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFFf1f3f6),
                        radius: 70,
                        child: AspectRatio(
                          aspectRatio: 1 / 1.6,
                          child: Image.asset(AppImages.processedImage2),
                        ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                      child: Text(
                        'Your clothes are still washed. will be finished soon.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Row(children: [
                        const CheckIcon(),
                        const BlueLine(),
                        const CheckIcon(),
                        const BlueLine(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, ProcessPage4.route());
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: AppColors.blue, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            AppImages.processedImage2)),
                                    borderRadius: BorderRadius.circular(40)),
                              ),
                            ),
                          ),
                        ),
                        const Divide(),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                  color: AppColors.lightGray, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage(AppImages.processImage4)),
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Washing',
                            style: TextStyle(
                                fontSize: 11,
                                color: AppColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              'Cleaning',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              'Dying',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Text(
                              'Deliver',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.lightGray,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '#2134587643',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Container(
                            height: 20,
                            width: 80,
                            decoration: BoxDecoration(
                                color: const Color(0xFFffca43),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text(
                                'Ongoing',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'laundry in',
                            style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'August 24,2022/07.25 pm',
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery address',
                            style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 180,
                            child: Text(
                              'Jl.Sempit lebar panjang no 30 gang buntu',
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Estimated time',
                            style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              'Finish in 1 days',
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //     alignment: Alignment.center,
                    //     child: FutureBuilder<Album>(
                    //       future: _futureAlbum,
                    //       builder: (context, snapshot) {
                    //         if (snapshot.connectionState ==
                    //             ConnectionState.done) {
                    //           if (snapshot.hasData) {
                    //             return Column(
                    //               mainAxisAlignment: MainAxisAlignment.center,
                    //               children: <Widget>[
                    //                 Text(snapshot.data!.title.toString()),
                    //                 Padding(
                    //                   padding: const EdgeInsets.symmetric(
                    //                       horizontal: 30),
                    //                   child: TextField(
                    //                     controller: _controller,
                    //                     decoration: const InputDecoration(
                    //                         hintText: 'Enter Title'),
                    //                   ),
                    //                 ),
                    //                 ElevatedButton(
                    //                   child: const Text('Update Data'),
                    //                   onPressed: () {
                    //                     setState(() {
                    //                       _futureAlbum =
                    //                           updateAlbum(_controller.text);
                    //                     });
                    //                   },
                    //                 )
                    //               ],
                    //             );
                    //           } else if (snapshot.hasError) {
                    //             return Text("${snapshot.error}");
                    //           }
                    //         }
                    //         return const CircularProgressIndicator();
                    //       },
                    //     )),
                    // FutureBuilder<Album>(
                    //   future: _futureAlbum,
                    //   builder: (context, snapshot) {
                    //     if (snapshot.connectionState == ConnectionState.done) {
                    //       if (snapshot.hasData) {
                    //         return Column(
                    //           children: [
                    //             Text(snapshot.data?.title ?? 'Deleted'),
                    //             ElevatedButton(
                    //                 onPressed: () {
                    //                   setState(() {
                    //                     _futureAlbum = deleteAlbum(
                    //                         snapshot.data!.id.toString());
                    //                   });
                    //                 },
                    //                 child: const Text('Delete Data'))
                    //           ],
                    //         );
                    //       } else if (snapshot.hasError) {
                    //         return Text('${snapshot.error}');
                    //       }
                    //     }
                    //     return const CircularProgressIndicator();
                    //   },
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
