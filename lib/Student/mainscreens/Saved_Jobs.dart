import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SavedJobs extends StatefulWidget {
  @override
  _SavedJobsState createState() => _SavedJobsState();
}

class _SavedJobsState extends State<SavedJobs> {
  List _u = [];
  Future<void> _fetchData() async {
    const API_URL = 'https://jsonplaceholder.typicode.com/photos';

    final response = await http.get(Uri.parse(API_URL));
    final data = json.decode(response.body);

    setState(() {
      _u = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 80, right: 80),
            child: TextField(
              //autofillHints: "search",
              cursorColor: Colors.indigo,
              onTap: () {
                showSearch(context: context, delegate: DataSearch());
              },
              decoration: InputDecoration(hintText: 'Search here..'),
            ),
          ),
          Positioned(
              child: Container(
            margin: EdgeInsets.only(left: 940),
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.indigo,
                ),
                onPressed: () {}),
          )),
        ]),
      ),
      body: SafeArea(
        child: _u.length == 0
            ? Center()
            : ListView.builder(
                itemCount: _u.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Expanded(
                            child: Card(
                              elevation: 15,
                              //color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          padding: EdgeInsets.all(10),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 16,
                                            backgroundImage:
                                                AssetImage("assets/images/wipro.png"),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 20, bottom: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.all(10)),
                                              Text(
                                                _u[index]["title"],
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                'Student Id: ${_u[index]["id"]}',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 3,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    //color: Colors.indigo,
                                    padding: EdgeInsets.all(10),
                                    margin:
                                        EdgeInsets.only(right: 20, bottom: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "SAVED",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
      ),
    );
  }

  @override
  void initState() {
    _fetchData();
  }
}

class DataSearch extends SearchDelegate<String> {
  //SavedJobs()
  final jobs = [
    'ai',
    'ml',
    'datascientist',
    'automation Engineer',
    'UI Developer',
    'android developer',
    'devops Engineer',
    'test engineer'
  ];

  final companies = [
    'google',
    'perfex',
    'microsoft',
    'tcs',
    'infosys',
    'wipro',
    'apple'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions

    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear, color: Colors.indigo))
    ];
    // throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, "");
      },
    );
    //AnimatedIcon(icon:AnimatedIcons.menu),progress:null
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList =
        query.isEmpty ? jobs : jobs.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.work),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
    throw UnimplementedError();
  }
}
