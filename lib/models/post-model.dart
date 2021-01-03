import 'package:flutter/cupertino.dart';

class Post{
    int userId;
    int id;
    String title;
    String body;

    Post({@required this.userId,@required this.id ,@required this.body ,@required this.title});

    factory Post.fromJson(Map<String , dynamic> json) {
      return Post(
        userId : json['userId'],
        id : json['id'],
        title: json['title'],
        body: json['body']
      );
    }

}