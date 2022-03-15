import 'package:flutter/material.dart';
import 'post_model.dart';
import 'dart:math' as math;

import 'package:expandable_text/expandable_text.dart';

// ignore: must_be_immutable
class PostDetail extends StatefulWidget {
  //HttpService httpService = HttpService();
  final JobPost jobpost;

  // ignore: use_key_in_widget_constructors
  const PostDetail({required this.jobpost});

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  final bool _pinned = true;

  final bool _snap = false;

  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            //automaticallyImplyLeading: true,
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 200.0,
            flexibleSpace: LayoutBuilder(
              builder: (context, c) {
                final settings = context.dependOnInheritedWidgetOfExactType<
                    FlexibleSpaceBarSettings>();
                final deltaExtent = settings!.maxExtent - settings.minExtent;
                final t = (1.0 -
                        (settings.currentExtent - settings.minExtent) /
                            deltaExtent)
                    .clamp(0.0, 1.0);
                final fadeStart =
                    math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
                const fadeEnd = 1.0;
                final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

                //Silver Bar Content
                return Stack(
                  children: [
                    //Collapsed SilverBar content

                    Center(
                      child: SizedBox(
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Text(
                                widget.jobpost.title.toUpperCase(),
                                maxLines: 2,
                                softWrap: true,
                                style: const TextStyle(
                                    // overflow: TextOverflow
                                    //     .ellipsis,
                                    fontSize: 13,
                                    
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.jobpost.recruiter.companyname
                                  .toUpperCase(),
                              maxLines: 2,
                              softWrap: true,
                              style: const TextStyle(
                                  // overflow: TextOverflow
                                  //     .ellipsis,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Expanded Silver Bar Content

                    Opacity(
                      opacity: opacity,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          //Title Text
                          // Container(
                          //   alignment: Alignment.center,
                          //   child: Text(
                          //     widget.jobpost.title,
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 20,
                          //       color: Colors.black,
                          //     ),
                          //   ),
                          // ),

                          //info text
                          Card(
                            color: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.black,
                            // width: MediaQuery.of(context).size.width,
                            // alignment: Alignment.center,
                            // margin: const EdgeInsets.only(
                            //     left: 5.0, right: 20.0, bottom: 25.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 10, 0, 0),
                                  child: Container(
                                    height: 70,
                                    width: 50,
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
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // const Padding(
                                      //     padding: EdgeInsets.fromLTRB(
                                      //         0, 10, 5, 0)),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          widget.jobpost.title.toUpperCase(),
                                          maxLines: 2,
                                          softWrap: true,
                                          style: const TextStyle(
                                              // overflow: TextOverflow
                                              //     .ellipsis,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                          widget.jobpost.recruiter.companyname
                                              .toUpperCase(),
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w800)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.pop(context)),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Job Details",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.share_rounded),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.star_border_outlined),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            shadowColor: Colors.black,
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.work,
                                        color: Colors.black54,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(widget.jobpost.experience,
                                          style: const TextStyle(
                                              //fontSize: 19,
                                              )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.people,
                                        color: Colors.black54,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "${widget.jobpost.maxPositions}",
                                        style: const TextStyle(
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_pin,
                                        color: Colors.black54,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "${widget.jobpost.cities}",
                                        style: const TextStyle(
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.menu_book,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Not disclosed",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.bookmark_add_sharp,
                                        color: Colors.black54,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        fit: FlexFit.loose,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Must have key skills:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              '${widget.jobpost.skillsets}',
                                              overflow: TextOverflow.fade,
                                              softWrap: true,
                                              maxLines: 3,
                                              style: const TextStyle(
                                                  color: Colors.black54),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "Other key skills:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              "Memory alignmnet, Product Design, Life cycle, Mobile Development, Mobile Application, Application Development",
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              "posted 5 days ago",
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          // Align(
                          //   alignment: Alignment.topLeft,
                          //   child: Container(
                          //     child: Text("Decription",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                          //     ),
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const ExpandableText(
                                  'Description',
                                  expandText: 'show more',
                                  collapseText: 'show less',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                const SizedBox(height: 10.0),
                                ExpandableText(
                                  widget.jobpost.description,
                                  expandText: 'show more',
                                  collapseText: 'show less',
                                  maxLines: 50,
                                  linkColor: Colors.purple,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Job Type",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(widget.jobpost.jobType)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Department",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(widget
                                        .jobpost.recruiter.organizationType)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Role",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(widget.jobpost.title)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Employment Type",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(widget.jobpost.jobType)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Desired candidate Profile",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(widget.jobpost.education)),
                                const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "PG - MS/M.Sc(Science) in Any Specialization")),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Employer Details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "Company Name",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(widget
                                            .jobpost.recruiter.companyname),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Company Website",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(widget
                                            .jobpost.recruiter.websitelink),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            height: 50,
            color: Colors.white12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    flex: 6,
                    child:
                        //ElevatedButton(onPressed: (){}, child: Text("Apply"))
                        Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.deepPurple,
                          width: 2,
                        ),
                      ),
                      height: 40,
                      //color: Colors.white,
                      child: const Center(
                          child: Text(
                        "Apply",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      )),
                    )),
                Expanded(
                    flex: 4,
                    child:
                        //ElevatedButton(onPressed: (){}, child: Text("Save"),),
                        Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          color: Colors.deepPurple,
                          border: Border.all(
                            color: Colors.purple.shade400,
                            width: 1,
                          )),
                      height: 40,
                      //color: Colors.purple,
                      child: const Center(
                          child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    )),
              ],
            ),
          )),
    );
  }
}
