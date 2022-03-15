import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Terms & Conditions",style: TextStyle(color: Colors.purple),),
        backgroundColor: Colors.white,
       leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
      ),
      body: FutureBuilder(
          future: rootBundle.loadString("assets/files/terms&conditions.md"),
          builder: (BuildContext context, AsyncSnapshot snapshot ) {
            if (snapshot.hasData) {
              return Markdown(data: snapshot.data);
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}