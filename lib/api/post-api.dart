import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_test/models/post-model.dart';

  final postUrl = "https://jsonplaceholder.typicode.com/posts";

Future<List<Post>> fetchPost() async {
  final url = await http.get(postUrl);
  if (url.statusCode == 200) {
    List<dynamic> body = jsonDecode(url.body);
    List<Post> posts = body.map((value) => Post.fromJson(value)).toList();
    return posts;
  } else {
    throw "Can't get posts";
  }
}

Future<Post> deletePost(int id) async{
  http.Response response = await http.delete("$postUrl/$id");

  if(response.statusCode == 200){
    print("Deleted")
  }else{
    throw "Can't delete post";
  }


}