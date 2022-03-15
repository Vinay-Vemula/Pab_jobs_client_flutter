import 'dart:convert';
import 'package:http/http.dart';

import 'post_model.dart';

class HttpService {
  // HttpService(this.jwt, this.payload);
  // factory HttpService.fromBase64(String jwt) => HttpService(
  //     jwt,
  //     json.decode(
  //         ascii.decode(base64.decode(base64.normalize(jwt.split(".")[1])))));

  // final String jwt;
  // final Map<String, dynamic> payload;

  final String postsUrl = "http://10.0.2.2:4446/api/alljobs";

  Future<List<JobPost>> getPosts() async {
    Response res = await get(
      Uri.parse(postsUrl),
      // headers: {"Authorization": jwt}
    );
    print(res);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<JobPost> posts = body
          .map(
            (dynamic item) => JobPost.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Unable to retrieve Job Posts.";
    }
  }
}
