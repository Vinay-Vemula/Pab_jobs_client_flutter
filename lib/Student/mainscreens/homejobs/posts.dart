import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'http_service.dart';
import 'post_detail.dart';
import 'post_model.dart';

class PostsPage extends StatefulWidget {
  PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  HttpService httpService = HttpService();
  bool Apply = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        // appBar: AppBar(
        //   //backgroundColor: Colors.purple
        //   title: const Text(
        //     "Jobs",
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   backgroundColor: Colors.white,
        //   leading: IconButton(
        //     icon: const Icon(
        //       Icons.menu,
        //       color: Colors.black,
        //     ),
        //     onPressed: () {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => Zoom(
        //       )));
        //     },
        //   ),
        // ),
        body: FutureBuilder(
          future: httpService.getPosts(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              List<JobPost>? posts = snapshot.data as List<JobPost>?;
              return Card(
                color: Colors.white38,
                elevation: 60,
                semanticContainer: true,
                //shape: ,
                shadowColor: Colors.black87,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  // reverse: true,
                  children: posts!
                      .map(
                        (JobPost jobpost) => InkWell(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                            child: Card(
                              shadowColor: Colors.black,
                              //elevation: 20,
                              semanticContainer: true,
                              color: Colors.white,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 10, 0, 5),
                                          child: Container(
                                            height: 50,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              // image: const DecorationImage(
                                              //   image: NetworkImage(
                                              //       'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190710102234/download3.png'),
                                              //   fit: BoxFit.cover,
                                              // ), //DecorationImage
                                              border: Border.all(
                                                color: Colors.grey,
                                              ), //Border.all
                                              // // borderRadius:
                                              // //     BorderRadius.circular(15),
                                              // boxShadow: const [
                                              //   BoxShadow(
                                              //     color: Colors.black,
                                              //     offset: Offset(
                                              //       5.0,
                                              //       5.0,
                                              //     ), //Offset
                                              //     blurRadius: 10.0,
                                              //     spreadRadius: 2.0,
                                              //   ), //BoxShadow
                                              //   BoxShadow(
                                              //     color: Colors.white,
                                              //     offset: Offset(0.0, 0.0),
                                              //     blurRadius: 0.0,
                                              //     spreadRadius: 0.0,
                                              //   ), //BoxShadow
                                              // ],
                                            ),
                                            child: const Icon(
                                              Icons.business_outlined,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                          width: 200,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // const Padding(
                                                //     padding: EdgeInsets.fromLTRB(
                                                //         0, 10, 5, 0)),
                                                SizedBox(
                                                  width: 250,
                                                  child: Text(
                                                    jobpost.title.toUpperCase(),
                                                    maxLines: 2,
                                                    softWrap: true,
                                                    style: const TextStyle(
                                                        // overflow: TextOverflow
                                                        //     .ellipsis,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                SizedBox(
                                                  width: 300,
                                                  child: Text(
                                                      jobpost
                                                          .recruiter.companyname
                                                          .toUpperCase(),
                                                      style: const TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w800)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.wallet_travel_sharp,
                                                color: Colors.grey,
                                                size: 17,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Experience: ${jobpost.experience}',
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                            width: 5,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.monetization_on_sharp,
                                                color: Colors.grey,
                                                size: 17,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Salary: ${jobpost.salary}',
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  //fontWeight:
                                                  // FontWeight.w500
                                                ),
                                              ),
                                            ],
                                          ),
                                          // Row(
                                          //   children: [
                                          //     const Icon(
                                          //       Icons.privacy_tip_outlined,
                                          //       color: Colors.black,
                                          //       size: 17,
                                          //     ),
                                          //     const SizedBox(),
                                          //     Text('${jobpost.skillsets}',
                                          //         style: const TextStyle(
                                          //             color: Colors.black)),
                                          //   ],
                                          // ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons
                                                    .align_vertical_bottom_sharp,
                                                color: Colors.grey,
                                                size: 17,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text('${jobpost.maxPositions}',
                                                  style: const TextStyle(
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  PostDetail(jobpost: jobpost),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
