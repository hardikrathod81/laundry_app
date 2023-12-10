// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_colors.dart';
import 'package:laundry_app/core/app_images.dart';
import 'package:laundry_app/widgets/app_widget.dart';
import 'package:laundry_app/modules/process/views/trackorder_page.dart';
import 'package:laundry_app/widgets/app_buttons.dart';
import 'package:laundry_app/modules/process/widget/process_widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}

class Person extends ChangeNotifier {
  Person({required this.name, required this.age});

  final String name;
  final int age;

  void increseAge() {
    age;
    notifyListeners();
  }
}

List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

Future<List<Photo>> fetechPhotos(http.Client client) async {
  final responce = await client
      .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  return compute(parsePhotos, responce.body);
}

class Album {
  final int id;
  final int userId;
  final String title;

  Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<dynamic, dynamic> json) {
    return Album(userId: json['userId'], id: json['id'], title: json['title']);
  }
}

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/4'));

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Faild to load ALbum");
  }
}

class Album1 {
  final String title;

  Album1({required this.title});

  factory Album1.fromJson(Map<String, dynamic> json) {
    return Album1(title: json['title']);
  }
}

Future<Album1> createAlbum(String title) async {
  try {
    final http.Response respornce = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/albums'),
        headers: <String, String>{
          'Content-Type': 'application/json; charest=UTF-8'
        },
        body: jsonEncode(<String, String>{
          "title": title,
        }));

    if (respornce.statusCode == 201) {
      return Album1.fromJson(json.decode(respornce.body));
    } else {
      throw Exception('failed to loading');
    }
  } catch (e) {
    rethrow;
  }
}

class ProcessPage4 extends StatefulWidget {
  const ProcessPage4({super.key});

  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(builder: (context) => const ProcessPage4());
  }

  @override
  State<ProcessPage4> createState() => _ProcessPage4State();
}

class _ProcessPage4State extends State<ProcessPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Row(children: [
                        const CheckIcon(),
                        const BlueLine(),
                        const CheckIcon(),
                        const BlueLine(),
                        const CheckIcon(),
                        const BlueLine(),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(color: AppColors.blue, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          AppImages.processedImage3)),
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                                  color: AppColors.black,
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
                              'Arrive in 30 Minutes ',
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                                image: AssetImage(AppImages.trackImage))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: AppButton(
                          value: 'Track Order',
                          onPressed: () {
                            Navigator.push(context, TrackOrderPage.route());
                          }),
                    ),
                    // FutureBuilder<List<Photo>>(
                    //   future: fetechPhotos(http.Client()),
                    //   builder: (context, snapshot) {
                    //     if (snapshot.hasError) {
                    //       return const Center(
                    //         child: Text('An error has occurred!'),
                    //       );
                    //     } else if (snapshot.hasData) {
                    //       return PhotosList(photos: snapshot.data!);
                    //     } else {
                    //       return const Center(
                    //         child: CircularProgressIndicator(),
                    //       );
                    //     }
                    //   },
                    // ),
                    // const SizedBox(
                    //   height: 100,
                    // ),
                    // FutureBuilder<Album>(
                    //   future: futureAlbum,
                    //   builder: (context, snapshot) {
                    //     if (snapshot.hasData) {
                    //       return Text(snapshot.data!.title);
                    //     } else if (snapshot.hasError) {
                    //       return Text('${snapshot.error}');
                    //     }
                    //     return const CircularProgressIndicator();
                    //   },
                    // ),
                    // Container(
                    //   alignment: Alignment.center,
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: (futureAlbum1 == null)
                    //       ? Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: <Widget>[
                    //             TextField(
                    //               controller: _controller,
                    //               decoration: const InputDecoration(
                    //                   hintText: 'Enter Title'),
                    //             ),
                    //             ElevatedButton(
                    //               child: const Text('Create Data'),
                    //               onPressed: () {
                    //                 setState(() {
                    //                   futureAlbum1 =
                    //                       createAlbum(_controller.text);
                    //                 });
                    //               },
                    //             ),
                    //           ],
                    //         )
                    //       : FutureBuilder<Album1>(
                    //           future: futureAlbum1,
                    //           builder: (context, snapshot) {
                    //             if (snapshot.hasData) {
                    //               return Text(snapshot.data!.title);
                    //             } else if (snapshot.hasError) {
                    //               return Text("${snapshot.error}");
                    //             }

                    //             return const CircularProgressIndicator();
                    //           },
                    //         ),
                    // ),
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

class PhotosList extends StatelessWidget {
  const PhotosList({
    super.key,
    required this.photos,
  });

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Image.network(photos[index].thumbnailUrl);
      },
    );
  }
}
